
MARKDOWN Helper Pages
===============================================
![Markdown-Logo][Logo]

Version 1.0 (2016.12.31)
by XD23FE39 on http://github.com/xd23fe39/markdown

***


Einstieg
-------------------

### Das Markdown-Grundgerüst

Das [Markdown][]-Grundgerüst bietet eine ideale Copy-Paste-Grundlage für das Schreiben eigener Markdown-Dokumente. Mit einem Markdown-Viewer [Plugin][] z.B. für den Firefox Internet-Browser lassen sich Markdown-Dokumente noch schöner darstellen. Weitere Informationen zu [Markdown gibt es auch auf auf Wikipedia][Wiki].

Das [Markdown][]-Grundgerüst:

```
Titel des Markdown-Dokumentes
===============================
![Image-Alternate-Text][Logo]

Version 1.0 (2016.12.31)

***

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
[Logo]: ./md.png "Markdown-Logo"
```

```
![Markdown-Image][Logo]
![Markdown-Image](./md.png "Markdown-Logo")
```

Beispiel:

![](./md.png "Markdown-Logo")


<!-- ============================================================== -->
<!-- Referenzen -->
[Logo]: ./md.png "Markdown-Logo"
[Markdown]: https://daringfireball.net/projects/markdown/ "Markdown is a text-to-HTML conversion tool for web writers."
[Plugin]: https://addons.mozilla.org/de/firefox/addon/markdown-viewer/ "Markdown Viewer Plugin for Firefox"
[Wiki]: https://de.wikipedia.org/wiki/Markdown
