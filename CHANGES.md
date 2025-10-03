## 3.2.1 (not yet released)

### What's changed
* Added support for ArchiMate shapes in sequence diagrams in [#59](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/59)
* Special shapes can be used for some elements in [#58](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/58)
* Bugfix: use `%true()` and `%false()` instead of `true` and `false` (included in #58)

## Release v1.2.0 ➡️ v3.2.0
### tag [v1.2.0](https://github.com/plantuml-stdlib/Archimate-PlantUML/tree/v1.2.0) (2025-10-01)
### tag [v3.2.0](https://github.com/plantuml-stdlib/Archimate-PlantUML/tree/v3.2.0) (2025-10-01)

[Full Changelog](https://github.com/plantuml-stdlib/Archimate-PlantUML/compare/v1.0.0...v3.2.0)

> [!IMPORTANT]
> This release has been tagged with both `v1.2.0` (the next minor version in line for Archimate-PlantUML) and `v3.2.0` (aligned to the current version of Archimate).
> 
> Moving forward, the versioning of Archimate-PlantUML will follow that of Archimate.
> 
> Defining a version as MAJOR.MINOR.PATCH, the MAJOR.MINOR will follow Archimate versions, with PATCH being incremented for feature changes and bugfixes.

### What's changed

* chore:minor typo by [@somejeff](https://github.com/somejeff) in [#44](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/44)
* Upgrade macros to new specs and add theme support by [@ebbypeter](https://github.com/ebbypeter) in [#45](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/45)
* Fix: $BUSINESS_FILLCOLOR missing made nesting Business_Service incorrect by [@jmanteau](https://github.com/jmanteau) in [#48](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/48)
* Fix spelling of implementation by [@joelparkerhenderson](https://github.com/joelparkerhenderson) in [#49](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/49)
* Update to ArchiMate 3.2 specifications and reorganize folders to assist plantuml build by [@jeanmarc](https://github.com/jeanmarc) in [#54](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/54)

### New Contributors
* [@somejeff](https://github.com/somejeff) made their first contribution in [#44](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/44)
* [@jmanteau](https://github.com/jmanteau) made their first contribution in [#48](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/48)
* [@joelparkerhenderson](https://github.com/joelparkerhenderson) made their first contribution in [#49](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/49)
* [@jeanmarc](https://github.com/jeanmarc) made their first contribution in [#54](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/54)


## Release v1.1.0
### tag [v1.1.0](https://github.com/plantuml-stdlib/Archimate-PlantUML/tree/v1.1.0) (2021-09-07)

[Full Changelog](https://github.com/plantuml-stdlib/Archimate-PlantUML/compare/v1.0.0...v1.1.0)

#### Implemented enhancements:
* Non standart Assignment relation looking [#33](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/33)
* Change arrow tail for Assignment from ◯ to ⬤. [#35](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/35) ([@Potherca](https://github.com/Potherca))

#### Fixed Bugs:
* Solid line instead of dotted line with Rel_Access_rw [#31](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/31)
* Change line for Read/Write relationship arrows from solid to dotted. [#32](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/32) ([@Potherca](https://github.com/Potherca))

#### Closed Issues:

* Minor request - flat Technology_Node [#37](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/37)
* stdLib references non existing url (...ebbypeter...) [#36](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/36)
* "realisation" sprite name instead of "realization" [#34](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/34)
* Join https://github.com/plantuml-stdlib and/or migrate there? [#29](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/29)
* Feedback [#28](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/28)
* Multiple regressions after last PRs [#24](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/24)
* a couple of minor errors in the readme file [#22](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/22)
* Add directed association relationship, and thicken the association arrow line [#20](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/20)
* some arrow lines and heads are wrong [#18](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/18)
* change the shape of 2 physical elements [#16](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/16)
* missing element Strategy_ValueStream [#14](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/14)
* Change Shape of technology Artifact [#13](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/13)
* Unfiled arrow for access relationships [#12](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/12)
* Typo Influnce -> Influence [#8](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/8)
* permission to use [#7](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/7)
* Technology Process - Missing Sprite [#5](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/5)
 
#### Merged pull requests:
* Change URLs in README file to plantuml-stdlib org. [#30](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/30) ([@Potherca](https://github.com/Potherca))
* Update all images [#26](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/26) ([@joseluis](https://github.com/joseluis))
* Fix [#24](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/24) Multiple regressions after last PRs [#25](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/25) ([@joseluis](https://github.com/joseluis))
* fix Readme [#23](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/23) ([@joseluis](https://github.com/joseluis))
* Add directed association rel. & thicken arrow line [#21](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/21) ([@joseluis](https://github.com/joseluis))
* Fixes some arrow lines and heads according to spec [#19](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/19) ([@joseluis](https://github.com/joseluis))
* make equipment and facility be Nodes [#17](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/17) ([@joseluis](https://github.com/joseluis))
* Add missing element Strategy_ValueStream [#15](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/15) ([@joseluis](https://github.com/joseluis))
* Added business location [#11](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/11) ([@tradesage](https://github.com/tradesage))
* Some examples improvements [#10](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/10) ([@smeagol74](https://github.com/smeagol74))
* [#8](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/8) fixed typoes Influnce -> Influence, Specilization -> Specialization [#9](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/9) ([@smeagol74](https://github.com/smeagol74))
* Update Technology_Process Macro - per Issue [#5](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/5) [#6](https://github.com/plantuml-stdlib/Archimate-PlantUML/pull/6) ([@zimchaa](https://github.com/zimchaa))

## Archmate-PlantUML v1.0.0
### tag [v1.0.0](https://github.com/plantuml-stdlib/Archimate-PlantUML/tree/v1.0.0) (2019-01-23)

[Full Changelog](https://github.com/plantuml-stdlib/Archimate-PlantUML/compare/53432f0cf64fd015c226b8082807fcd37c18cc8a...v1.0.0)

Closed issues:

* Cannot generate an Archimate image according to the manual: 'syntax error' [#4](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/4)
* Update the ReadMe.md file [#1](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/1)

Merged pull requests:
* Updated ReadMe.md and minor fixes on samples [#3](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/3) ([ebbypeter](https://github.com/ebbypeter))
* Archimate spec & samples [#2](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/2) ([ebbypeter](https://github.com/ebbypeter))
