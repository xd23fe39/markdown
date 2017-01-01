
<!-- Referenzen -->

[Logo]: ./res/md.png "Markdown-Logo"
[Markdown]: https://daringfireball.net/projects/markdown/ "Markdown is a text-to-HTML conversion tool for web writers."
[Plugin]: https://addons.mozilla.org/de/firefox/addon/markdown-viewer/ "Markdown Viewer Plugin for Firefox"
[Syntax]: http://markdown.de/ "Die deutsche Markdown-Referenz."

<!-- Kopfzeile -->

[mdw]: https://de.wikipedia.org/wiki/Markdown "Markdown auf Wikipedia"

*Version 1.0 (2016.12.28). Dieses Dokument ist ein [Markdown-Dokument][mdw]. Weitere Informationen zu Markdown
finden Sie auf der [Markdown-Homepage][Markdown] oder in deutscher Sprache auf
[markdown.de][Syntax]. Dieses Dokument wurde vom Autor primär zur Eigennutzung erstellt.*

* * *

<!-- Markdown-Content -->

MARKDOWN Helper Pages
===============================================
![Markdown-Logo][Logo]

Version 1.0 (2016.12.31)
by XD23FE39 on http://github.com/xd23fe39/markdown

* * *


Einstieg
-------------------

### Das Markdown-Grundgerüst

Das [Markdown][]-Grundgerüst unter `./templates/basic` bietet eine ideale Copy-Paste-Grundlage für das Schreiben eigener Markdown-Dokumente. Mit einem Markdown-Viewer [Plugin][] z.B. für den Firefox Internet-Browser lassen sich Markdown-Dokumente noch schöner darstellen. Weitere Informationen zu [Markdown gibt es auch auf auf Wikipedia][mdw].

Das [Markdown][]-Grundgerüst:

```
Titel des Markdown-Dokumentes
===============================
![Image-Alternate-Text][Logo]

Version 1.0 (2016.12.31)

* * *

Hauptüberschrift
------------------

### Unterüberschrift

Beispiel für ein Markdown-Dokument.

<!-- Referenzen -->
[Logo]: ./md.png "Markdown-Logo"
[Markdown]: https://daringfireball.net/projects/markdown/ "Markdown is a text-to-HTML conversion tool for web writers."
[Plugin]: https://addons.mozilla.org/de/firefox/addon/markdown-viewer/ "Markdown Viewer Plugin for Firefox"
```


Verlinken von Inhalten
------------------------

### Verlinkung innerhalb der aktuellen Seite

Verlinkung auf einen Absatz der aktuellen Seite mit Sprungmarken (`named anchor`):

```
[Springe zur Sprungmarke](#sprungmarke)
```

Beispiel: [Springe zur ersten Sprungmarke unten](#sprungmarke_1) oder zur [alternativen Sprungmarke](#sprungmarke_2)

<a name="sprungmarke_1"></a>
Absätze mit _Sprungmarke:_

```
### <a name="sprungmarke"></a>Überschrift mit Sprungmarke
<a name="sprungmarke"></a>Absatz mit Sprungmarke
```

<span id="sprungmarke_2">Alternative schreibweisen für _Sprungmarken:_</span>

```
<h3 id="sprungmarke">Überschrift mit Sprungmarke</h3>
<span id="sprungmarke">Absatz mit Sprungmarke</span>
```


Einbinden von Bildern
----------------------

```
[Logo]: ./res/md.png "Markdown-Logo"
```

```
![Markdown-Image][Logo]
![Markdown-Image](./res/md.png "Markdown-Logo")
```

Beispiel:

![Markdown-Image][Logo]



<!-- Einfacher Haftungsausschluss -->

* * *

*Der Autor übernimmt keinerlei Gewähr für die Aktualität, Richtigkeit und Vollständigkeit der bereitgestellten Informationen. Haftungsansprüche gegen den Autor, welche sich auf Schäden materieller oder ideeller Art beziehen, die durch die Nutzung oder Nichtnutzung der dargebotenen Informationen bzw. durch die Nutzung fehlerhafter und unvollständiger Informationen verursacht wurden, sind grundsätzlich ausgeschlossen, sofern seitens des Autors kein nachweislich vorsätzliches oder grob fahrlässiges Verschulden vorliegt. Der Autor behält es sich ausdrücklich vor, Teile der Seiten oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.*

Der Autor

<xd23fe39@yahoo.de>
