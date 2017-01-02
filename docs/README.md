
<!-- Referenzen -->

[Logo]: ./res/md.png "Markdown-Logo"
[Markdown]: https://daringfireball.net/projects/markdown/ "Markdown is a text-to-HTML conversion tool for web writers."
[Plugin]: https://addons.mozilla.org/de/firefox/addon/markdown-viewer/ "Markdown Viewer Plugin for Firefox"
[Syntax]: http://markdown.de/ "Die deutsche Markdown-Referenz."
[css]: https://gist.github.com/killercup "Pascal Hertleif - pandoc.css"

<!-- Kopfzeile -->

[mdw]: https://de.wikipedia.org/wiki/Markdown "Markdown auf Wikipedia"

*Version 1.0 (2016.12.28). Dieses Dokument ist ein [Markdown-Dokument][mdw]. Weitere Informationen zu Markdown
finden Sie auf der [Markdown-Homepage][Markdown] oder in deutscher Sprache auf
[markdown.de][Syntax]. Dieses Dokument wurde vom Autor primär zur Eigennutzung erstellt.*

* * *


<!-- Markdown-Content -->

MARKDOWN Helper Tool (mdhelper)
===============================================
![Markdown-Logo][Logo]

Version 1.0 (2016.12.31)
by XD23FE39 on http://github.com/xd23fe39/markdown

* * *

Aufruf
--------------

Das MARKDOWN Helper Tool `mdhelper` ist ein `bash`-Script zur einfachen Verwaltung von
Markdown Dokumenten und der Konvertierung via `pandoc` zu HTML.

```
MARKDOWN Helper (mdhelper) Version 1.0

  Usage: mdhelper init|status|build

  Document converter tool: /usr/bin/pandoc
```

### Ein einfacher Workflow mit `mdhelper`

```
mkdir ./docs
cd ./docs
mdhelper init
mdhelper build
```

Siehe auch:

* [First Steps](first_steps.md)


<!-- Einfacher Haftungsausschluss -->

* * *

*Der Autor übernimmt keinerlei Gewähr für die Aktualität, Richtigkeit und Vollständigkeit der bereitgestellten Informationen. Haftungsansprüche gegen den Autor, welche sich auf Schäden materieller oder ideeller Art beziehen, die durch die Nutzung oder Nichtnutzung der dargebotenen Informationen bzw. durch die Nutzung fehlerhafter und unvollständiger Informationen verursacht wurden, sind grundsätzlich ausgeschlossen, sofern seitens des Autors kein nachweislich vorsätzliches oder grob fahrlässiges Verschulden vorliegt. Der Autor behält es sich ausdrücklich vor, Teile der Seiten oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.*

Der Autor

<xd23fe39@yahoo.de>
