# Archimate-PlantUML
PlantUML macros and other includes for creating Archimate Diagrams easily.
![Archimate-PlantUML Sample image - Internet Browser](https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/images/Archimate%20Sample%20-%20Internet%20Browser.png) 

## Background
### PlantUML
[PlantUML](http://en.plantuml.com/) is an open source project that allows you to create UML diagrams.
Diagrams are defined using a simple and intuitive plain text language. It uses [Graphviz](https://en.wikipedia.org/wiki/Graphviz) software to lay out its diagrams. Images can be generated in PNG, in SVG or in LaTeX format.

### ArchiMate
[ArchiMate](http://pubs.opengroup.org/architecture/archimate3-doc/) is an open and independent enterprise architecture modeling language to support the description, analysis and visualization of architecture within and across business domains in an unambiguous way. 

ArchiMate offers a common language for describing the construction and operation of business processes, organizational structures, information flows, IT systems, and technical infrastructure. This is just like an architectural drawing in classical building where the architecture describes the various aspects of the construction and use of a building. This insight helps the different stakeholders to design, assess, and communicate the consequences of decisions and changes within and between these business domains. 

[Archimate-PlanUML](https://github.com/ebbypeter/Archimate-PlantUML) combines the benefits of PlantUML and ArchiMate for providing a simple way of creating and managing ArchiMate diagrams. The Archimate-PlantUML is a set of macros and other includes written on top of [PlantUML Archimate specification](http://plantuml.com/archimate-diagram), with an aim to simplify the syntax for creating elements and defining relationships.

## Getting Started
Include the `Archimate.puml` file to the top of your ArchiMate PlantUML `.puml` or `.wsd` file. This will allow you to use all the macros that are defined in the `Archimate.puml` file.

To always use the most updated version from this repo, add the following inlcude statement
```javascript
!includeurl https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/Archimate.puml
```
However, if you want offline capability and be independent of any internet connectivity, you can also download the files found in the `root` of this repository and referece in locally with 
```javascript
!include path/to/Archimate.puml
```

## Usage
After you have included `Archimate.puml` you can use the defined macros for ArchiMate elements. 

### ArchiMate Elements
The ArchiMate elements are defined in the following pattern:
```javascript
Category_ElementName(nameOfTheElement, "description")
```
For example:  
* To define a `Stakeholder` element, which is part of `Motivation` category, the synax will be
    ```javascript
    Motivation_Stakeholder(StakeholderElement, "Stakeholder Description")
    ```
    Output:  
    ![Stakeholder](https://www.plantuml.com/plantuml/png/LOtB2i8m44NtXVv3x4f16zswgc1t5WHnBTDqCA5vCPdu-7lRNTrTxkMUqoG6ukoiQ3_WeiNzeInMnYkR1ynaXMQEwIWbmRj-6jQvpmb91S_ekLR1IUpxRqH6aYTIsZXWt5qjUBvt5-aW_Irrd5nbKHPTOFC2Di4_RWmZwc07fFKYjnRTvDYAQb6ACoP59ix7QZE36lJ3nFm1 "Stakeholder")
* To define a `Business Service` element,
    ```javascript
    Business_Service(BService, "Business Service")
    ```
    Output:  
    ![Business Service](https://www.plantuml.com/plantuml/png/LOsz2i8m54RtGjuXTbBGH1oTseARWY3EagGN6qZISE-DFszlXJguVPp3uMk83NA9GHvU9kO0svse5ZwvK7ee6EJ0d6clDPgdkdiUYYq4wCR4a5YvCMgmzfs10NMBRl3HC6pEmII-deuw6lepAazVeX9LLyWd8BfT01_UmRARnrhMFoTdLA--HGEfd-8F "Business Service") 

### ArchiMate Relationships
The ArchiMate relationships are defined with the following pattern:
```javascript
Rel_RelationType(fromElement, toElement, "description")
```
and to define the direction / orientation of the two elements:
```javascript
Rel_RelationType_Direction(fromElement, toElement, "description")
```
The `RelationTypes` supported are:
 - Access
 - Aggregation
 - Assignment
 - Association
 - Composition
 - Flow
 - Influnce
 - Realization
 - Serving
 - Specilization
 - Triggering

The `Directions` supported are:
 - Up
 - Down
 - Left
 - Right

For example:
* To denote a `composition` relationship between the Stakeholder and Business Service defined above, the syntax will be
    ```javascript
    Rel_Composition(StakeholderElement, BService, "Description for the relationship")
    ```
    Output:  
    ![Composition Relationship](https://www.plantuml.com/plantuml/png/ROzFImD13CNl2_iTnfugw8xWpLEjzcP1B9wNsTdK2MR-a6IgVdjtfS8Ati9xUU-NR4GTQuraTfyk5eARsxQvmEIfZb2PJ50jScSjku_k3JNKeGgmpqaXQUTpj30CNmKKsDwp3nYTmlKpkQIl-oSRdVnnkZAnscQV5KzECQV-eEuTGgOHUBsOTmHn8boPrK8qZo2UiSp1rMNRRAjW0f7-07n23-ljUPXYlvuvI_D-sxm0zGyvbYmub_nBN9GiUEQOsMW0mq0_bql0CfTk88tJKzy0 "Composition Relationship")
* To orient the two elements in top - down position, the syntax will be
    ```javascript
    Rel_Composition_Down(StakeholderElement, BService, "Description for the relationship")
    ```
    Output:  
    ![Composition Relationship Down](https://www.plantuml.com/plantuml/png/ROzBQyD038Jl1l-7RKuffDuUUkefpUFMG4desQpNQbPaNqZQ9FttjKCABlGcPZJpIKiMGrA2Lzkh2Td3yqjTFM2qllHGo2idalbLQpANveZYIbSOoAOe4AMnAMZekkyC0gJVo3eCHk3fmviedxjt7Gp_SPeyiEfgbmJFHZ35zY3c12xv7cW-cRSUma1OgDb4L1jWIvZ7uEonhbQ5CG9pUm0weuNvwZuCiLzFtQLnlwxsuDjr2ZantkYRT8d_OYTD4wZwIgJ4WIBmj_FPOHwRbn3xuRCV "Composition Relationship Down")

### ArchiMate Groups
Groups in ArchiMate are denoted using the following syntax:
```javascript
Grouping(nameOfTheGroup, "Group Description"){
    //Define the ArchiMate Elements
}
```
and to define the direction / orientation of the two elements:
```javascript
Group(nameOfTheGroup, "Group Description"){
    //Define the ArchiMate Elements
}
```
For example
* Group Type 1:
    ```javascript
    Grouping(Example01, "Group Type 01"){
        Motivation_Stakeholder(StakeholderElement, "Stakeholder Description")
        Business_Service(BService, "Business Service")
    }
    ```
    Output:  
    ![Group Type 1](https://www.plantuml.com/plantuml/png/LKvDQm8n5Bm7yX_IFQtGRlJGYoShbLug56pFaiq-t4VpnSkBRH7_UsEhe7CQPfYFHMP3NBnJgs_ZauFfenHt6Amh0nHoQcHEUQurcQzkXpoMlcGW6mD3uCv6hw7lVn8ma7uYEw8t30zlpWJ-MBzgR_ADqwMw9SKBnP8mxDhBwknUDN-YUgzbQZfh9WSfLCKwCkuDOmpR3PjF6ACRWDehldBWwvdQS2MgPyYMC9s2pUI_Qbao1iXvkm7QeuLsUIOrUl7KMJfbZb98iO0mrC-_ "Group Type 1")

* Group Type 2:
    ```javascript
    Group(Example01, "Group Type 01"){
        Motivation_Stakeholder(StakeholderElement, "Stakeholder Description")
        Business_Service(BService, "Business Service")
    }
    ```
    Output:  
    ![Group Type 2](https://www.plantuml.com/plantuml/png/LKxBQW8n5Dq7yW_fh4Qm4t7HHLUZLBgf8AXhoMGkJcXUtDpueFJVZLR1djNX7CwZJQIGihDYSL8kMfYySVPYlBQvXunM34GnlKk9wjZi3GsvombG1q_WgT71IUYwSmG2b3FKWt6Au7LbbQVjyaiwbVuvJInRd77sYI77-Z4w7OlgfeXDwHAJQJNwuKmKB0EPWo8J_6vDwXk6O7l0-ealBBZofJGyYU83aaOJhy5gz5SrpybuI6ct1ZmO3VNyJahquOcxTCtySjQ2xylX2m00 "Group Type 2")

## Example
```javascript
@startuml
!includeurl https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/Archimate.puml

title Archimate Sample - Requirement & Application Services

'Elements'
Motivation_Requirement(ReqPayrollStandard, "Do Payroll with a standard system")
Motivation_Requirement(ReqBudgetPlanning, "Do budget planning within the ERP system")

Application_Service(ASPayroll,"Payroll Service")
Application_Service(ASBudgetPlanning,"Budget Planning Service")
Application_Component(ACSAPFinanceAccRec, "SAP Finance - Accounts Recievables")
Application_Component(ACSAPHR, "SAP Human Resources")
Application_Component(ACSAPFin, "SAP Finance")
Application_Component(ACSAP,"SAP") 

'Relationships'
Rel_Realization_Up(ASPayroll, ReqPayrollStandard)
Rel_Realization_Up(ASBudgetPlanning, ReqBudgetPlanning)
Rel_Realization_Up(ACSAPFinanceAccRec, ASBudgetPlanning)
Rel_Realization_Up(ACSAPHR, ASPayroll)

Rel_Composition_Up(ACSAPFin, ACSAPFinanceAccRec)
Rel_Composition_Up(ACSAP, ACSAPHR)
Rel_Composition_Up(ACSAP, ACSAPFin)
@enduml
```

Output:  
![Archimate-PlantUML Sample image - Internet Browser](https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/images/Archimate%20Sample%20-%20Requirement%20%26%20Application%20Services.png) 

## Contributing
If you have any ideas, just [open an issue](https://github.com/ebbypeter/Archimate-PlantUML/issues/new) and tell me what you think.

If you'd like to contribute, please fork the repository and use a feature branch.  
Pull requests are warmly welcome.

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments
* [PlantUML Reference Guide](http://plantuml.com/PlantUML_Language_Reference_Guide.pdf) - PlantUML Reference Guide
* [Archimate 3.0.1 Specification](http://pubs.opengroup.org/architecture/archimate3-doc/) - Archimate Specifications
* [Plant UML Archimate Specifications](http://plantuml.com/archimate-diagram) - for archimate spec in PlantUML
* [C4-PlantUML](https://github.com/RicardoNiepel/C4-PlantUML) - for inspiration, base structure and scripts idea
