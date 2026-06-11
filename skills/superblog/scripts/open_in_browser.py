#!/usr/bin/env python3
"""Open a file, such as an explainer HTML page, in the default browser.

Usage: python3 open_in_browser.py <path-to-file>

Tries the standard library's webbrowser first, then falls back to the
platform opener (open / xdg-open / start). Always prints the absolute path
and a file:// URL so the user can open it manually if auto-open is blocked.
"""

import os
import subprocess
import sys
import webbrowser


def main() -> int:
    if len(sys.argv) < 2:
        print("usage: open_in_browser.py <path-to-file>", file=sys.stderr)
        return 2

    path = os.path.abspath(os.path.expanduser(sys.argv[1]))
    if not os.path.exists(path):
        print(f"error: file not found: {path}", file=sys.stderr)
        return 1

    url = "file://" + path
    opened = False

    try:
        opened = webbrowser.open(url)
    except Exception:
        opened = False

    if not opened:
        try:
            if sys.platform == "darwin":
                subprocess.run(["open", path], check=True)
            elif os.name == "nt":
                os.startfile(path)  # type: ignore[attr-defined]
            else:
                subprocess.run(["xdg-open", path], check=True)
            opened = True
        except Exception:
            opened = False

    print(f"\nExplainer page: {path}")
    print(f"Open in browser: {url}")
    if opened:
        print("Opened in your default browser.")
    else:
        print("Could not auto-open -- copy the file:// link above into your browser.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
