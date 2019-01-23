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
    ![Stakeholder](https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/images/Example-Stakeholder.png)
* To define a `Business Service` element,
    ```javascript
    Business_Service(BService, "Business Service")
    ```
    Output:  
    ![Business Service](https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/images/Example-BusinessService.png) 

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
    ![Composition Relationship](https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/images/Example-Composition.png)
* To orient the two elements in top - down position, the syntax will be
    ```javascript
    Rel_Composition_Down(StakeholderElement, BService, "Description for the relationship")
    ```
    Output:  
    ![Composition Relationship Down](https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/images/Example-CompositionDown.png)

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
    ![Group Type 1](https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/images/Example-Grouping.png)

* Group Type 2:
    ```javascript
    Group(Example01, "Group Type 01"){
        Motivation_Stakeholder(StakeholderElement, "Stakeholder Description")
        Business_Service(BService, "Business Service")
    }
    ```
    Output:  
    ![Group Type 2](https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/images/Example-Group.png")

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
