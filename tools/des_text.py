#!/usr/bin/env python3
"""AquaNox 1 - Parser fuer die KLARTEXT-.des-Dateien (dat/sty/*_d.des, fog.des,
terrain.des, menu.des, hud.des, mp_rules.des ...).

Syntax:
    [Name]
    {
        Key   = 29
        Text  = "Unser Hobby-Terrorist..."
        [Unterblock]
        {
            ...
        }
    }
    // Kommentar

Rueckgabe: Node-Baum mit .name, .items (Liste von (key, value) in Reihenfolge)
und .children. Werte bleiben STRINGS (Anfuehrungszeichen entfernt) - der
Aufrufer entscheidet ueber int/float.
"""
import re, sys, io


class Node:
    def __init__(self, name):
        self.name = name
        self.items = []       # [(key, value_str)]
        self.children = []    # [Node]

    def get(self, key, default=None):
        k = key.lower()
        for a, b in self.items:
            if a.lower() == k:
                return b
        return default

    def geti(self, key, default=None):
        v = self.get(key)
        if v is None:
            return default
        try:
            return int(float(v))
        except ValueError:
            return default

    def getf(self, key, default=None):
        v = self.get(key)
        if v is None:
            return default
        try:
            return float(v)
        except ValueError:
            return default

    def set(self, key, value):
        k = key.lower()
        for i, (a, b) in enumerate(self.items):
            if a.lower() == k:
                self.items[i] = (a, value)
                return
        self.items.append((key, value))

    def child(self, name):
        n = name.lower()
        for c in self.children:
            if c.name.lower() == n:
                return c
        return None

    def children_like(self, prefix):
        p = prefix.lower()
        return [c for c in self.children if c.name.lower().startswith(p)]

    def __repr__(self):
        return f"<{self.name} items={len(self.items)} kids={len(self.children)}>"


_TOK = re.compile(r'"([^"]*)"|(\[[^\]\r\n]*\])|([{}])|([^\s{}]+)')


def parse(text):
    if isinstance(text, bytes):
        text = text.decode("latin-1")
    # Kommentare entfernen (// bis Zeilenende), aber nicht in Strings
    out = []
    for line in text.splitlines():
        q = False
        for i, ch in enumerate(line):
            if ch == '"':
                q = not q
            elif ch == '/' and not q and i + 1 < len(line) and line[i + 1] == '/':
                line = line[:i]
                break
        out.append(line)
    text = "\n".join(out)

    root = Node("ROOT")
    stack = [root]
    pending = None          # zuletzt gesehener [Name], wartet auf '{'
    i = 0
    n = len(text)
    while i < n:
        m = _TOK.search(text, i)
        if not m:
            break
        i = m.end()
        s, sect, brace, word = m.groups()
        if sect is not None:
            pending = sect[1:-1]
        elif brace == "{":
            node = Node(pending if pending is not None else "")
            stack[-1].children.append(node)
            stack.append(node)
            pending = None
        elif brace == "}":
            if len(stack) > 1:
                stack.pop()
        elif word is not None:
            # key = value
            if word == "=":
                continue
            # naechstes Token ist '=' ?
            m2 = _TOK.search(text, i)
            if m2 and m2.group(4) == "=":
                i = m2.end()
                m3 = _TOK.search(text, i)
                if m3:
                    i = m3.end()
                    val = m3.group(1) if m3.group(1) is not None else (m3.group(4) or "")
                    stack[-1].items.append((word, val))
            else:
                stack[-1].items.append((word, ""))
        elif s is not None:
            stack[-1].items.append(("", s))
    return root


def load(path):
    return parse(open(path, "rb").read())


def dumps(node, indent=0, _top=True):
    """Schreibt den Baum wieder als Klartext (nicht byte-identisch, aber
    vom Spiel lesbar - Format entspricht den Originaldateien)."""
    sp = "    " * indent
    buf = io.StringIO()
    if not _top:
        buf.write(f"{sp}[{node.name}]\n{sp}{{\n")
        inner = indent + 1
    else:
        inner = indent
    isp = "    " * inner
    for k, v in node.items:
        if v == "" or re.fullmatch(r"-?[0-9.]+", v or ""):
            buf.write(f"{isp}{k} = {v}\n")
        else:
            buf.write(f'{isp}{k} = "{v}"\n')
    for c in node.children:
        buf.write("\n")
        buf.write(dumps(c, inner, _top=False))
    if not _top:
        buf.write(f"{sp}}}\n")
    return buf.getvalue()


def save(path, root):
    body = "".join(dumps(c, 0, _top=False) for c in root.children)
    open(path, "w", encoding="latin-1", newline="\n").write(body)


def show(node, indent=0):
    print("  " * indent + f"[{node.name}]")
    for k, v in node.items:
        print("  " * indent + f"  {k} = {v}")
    for c in node.children:
        show(c, indent + 1)


if __name__ == "__main__":
    for p in sys.argv[1:]:
        print(f"===== {p}")
        show(load(p))
