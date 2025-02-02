// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final dart = Mode(refs: {
  '~contains~0~variants~4~contains~2': Mode(
      className: "subst",
      variants: [Mode(begin: "\\\${", end: "}")],
      keywords: "true false null this is new super",
      contains: [C_NUMBER_MODE, Mode(ref: '~contains~0')]),
  '~contains~0~variants~4~contains~1':
      Mode(className: "subst", variants: [Mode(begin: "\\\$[A-Za-z0-9_]+")]),
  '~contains~0': Mode(className: "string", variants: [
    Mode(begin: "r'''", end: "'''"),
    Mode(begin: "r\"\"\"", end: "\"\"\""),
    Mode(begin: "r'", end: "'", illegal: "\\n"),
    Mode(begin: "r\"", end: "\"", illegal: "\\n"),
    Mode(begin: "'''", end: "'''", contains: [
      BACKSLASH_ESCAPE,
      Mode(ref: '~contains~0~variants~4~contains~1'),
      Mode(ref: '~contains~0~variants~4~contains~2')
    ]),
    Mode(begin: "\"\"\"", end: "\"\"\"", contains: [
      BACKSLASH_ESCAPE,
      Mode(ref: '~contains~0~variants~4~contains~1'),
      Mode(ref: '~contains~0~variants~4~contains~2')
    ]),
    Mode(begin: "'", end: "'", illegal: "\\n", contains: [
      BACKSLASH_ESCAPE,
      Mode(ref: '~contains~0~variants~4~contains~1'),
      Mode(ref: '~contains~0~variants~4~contains~2')
    ]),
    Mode(begin: "\"", end: "\"", illegal: "\\n", contains: [
      BACKSLASH_ESCAPE,
      Mode(ref: '~contains~0~variants~4~contains~1'),
      Mode(ref: '~contains~0~variants~4~contains~2')
    ])
  ]),
}, keywords: {
  "keyword":
      "required late abstract as assert async await break case catch class const continue covariant default deferred do dynamic else enum export extends extension external factory false final finally for Function get hide if implements import in inferface is library mixin new null on operator part rethrow return set show static super switch sync this throw true try typedef var void while with yield",
  "literal": "null false true",
  "title": [
        // Flutter
        'BuildContext',
        'Widget',
        'StatelessWidget',
        'StatefulWidget',
        'BoxDecoration',
        'Color',
        'TextStyle',
        'MaterialApp',
        'Material',
        'Scaffold',
        'Provider',
        'Provider',
        'Radius',
        'BorderRadius',
        'Curves',
        'Offset',
        'Matrix4',
        'Padding',
        'EdgeInsets',
        'Positioned',
        'Container',
        'Transform',
        'Text',
      ].join(' ') +
      "bool double dynamic int num Comparable DateTime Duration Function Iterable Iterator List Map Match Null Object Pattern RegExp Set Stopwatch String StringBuffer StringSink Symbol Type Uri print Element ElementList document querySelector querySelectorAll window"
}, contains: [
  Mode(ref: '~contains~0'),
  Mode(className: "comment", begin: "/\\*\\*", end: "\\*/", contains: [
    PHRASAL_WORDS_MODE,
    Mode(
        className: "doctag",
        begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
        relevance: 0)
  ], subLanguage: [
    "markdown"
  ]),
  Mode(className: "comment", begin: "///+\\s*", end: "\$", contains: [
    Mode(subLanguage: ["markdown"], begin: ".", end: "\$"),
    PHRASAL_WORDS_MODE,
    Mode(
        className: "doctag",
        begin: "(?:TODO|FIXME|NOTE|BUG|XXX):",
        relevance: 0)
  ]),
  C_LINE_COMMENT_MODE,
  C_BLOCK_COMMENT_MODE,
  Mode(
      className: "class",
      beginKeywords: "class interface",
      end: "{",
      excludeEnd: true,
      contains: [
        Mode(beginKeywords: "extends implements"),
        UNDERSCORE_TITLE_MODE
      ]),
  Mode(
      className: "literal",
      begin:
          "(-?)(\\b0[xX][a-fA-F0-9]+|(\\b\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)",
      relevance: 0),
  Mode(
      begin: "[A-Z][a-zA-Z]*\\w*\\s*\\(",
      returnBegin: true,
      contains: [TITLE_MODE],
      relevance: 0),
  Mode(
      begin: "[A-Z][a-zA-Z]*\\.",
      returnBegin: true,
      contains: [TITLE_MODE],
      relevance: 0),
  Mode(className: "meta", begin: "@[A-Za-z]+"),
  Mode(begin: "=>"),
]);
