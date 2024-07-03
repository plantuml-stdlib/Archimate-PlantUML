# Archimate-PlantUML

PlantUML macros and includes for creating Archimate Diagrams easily.

![Archimate-PlantUML Sample image - Internet Browser](https://raw.githubusercontent.com/plantuml-stdlib/Archimate-PlantUML/master/images/Archimate%20Sample%20-%20Internet%20Browser.png) 

## Table of Contents
1. [Background](#background)
   - [PlantUML](#plantuml)
   - [ArchiMate](#archimate)
2. [Getting Started](#getting-started)
3. [Usage](#usage)
   - [ArchiMate Elements](#archimate-elements)
   - [ArchiMate Relationships](#archimate-relationships)
   - [ArchiMate Groups](#archimate-groups)
   - [Nesting of Components](#nesting-of-components)
   - [Theme Support](#theme-support)
6. [Example](#example)
7. [Contributing](#contributing)
8. [License](#license)
9. [Acknowledgments](#acknowledgments)

## Background

### PlantUML
[PlantUML](http://en.plantuml.com/) is an open-source project that allows you to create UML diagrams using a simple text language. It utilizes [Graphviz](https://en.wikipedia.org/wiki/Graphviz) for diagram layout, generating images in PNG, SVG, or LaTeX formats.

### ArchiMate
[ArchiMate](http://pubs.opengroup.org/architecture/archimate3-doc/) is an enterprise architecture modeling language that supports the description, analysis, and visualization of architecture across business domains.

ArchiMate offers a common language for describing the construction and operation of business processes, organizational structures, information flows, IT systems, and technical infrastructure. This is just like an architectural drawing in classical building where the architecture describes the various aspects of the construction and use of a building. This insight helps the different stakeholders to design, assess, and communicate the consequences of decisions and changes within and between these business domains. 

[Archimate-PlantUML](https://github.com/plantuml-stdlib/Archimate-PlantUML) combines the benefits of PlantUML and ArchiMate for providing a simple way of creating and managing ArchiMate diagrams. The Archimate-PlantUML is a set of macros and other includes written on top of [PlantUML Archimate specification](http://plantuml.com/archimate-diagram), with an aim to simplify the syntax for creating elements and defining relationships.

## Getting Started
Include the `Archimate.puml` file in your `.puml` or `.wsd` file:

```javascript
!includeurl https://raw.githubusercontent.com/plantuml-stdlib/Archimate-PlantUML/master/Archimate.puml
```

For offline use, download the files and reference them locally:
```javascript
!include path/to/Archimate.puml
```

## Usage
After you have included `Archimate.puml` you can use the defined macros for ArchiMate elements. 

### ArchiMate Elements
The ArchiMate elements are defined in the following pattern:
```javascript
Category_ElementName(nameOfTheElement, "description")
or
Category_ElementName(nameOfTheElement, "description", true) //To Enable nesting of elements
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
    Business_Service(BService, "Business Service", true) {
        Application_Service("AppService01", "App Service 01")
        Application_Service("AppService02", "App Service 02")
        Application_Service("AppService03", "App Service 03")
    }
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
 - Influence
 - Realization
 - Serving
 - Specialization
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
    ![Group Type 2](https://raw.githubusercontent.com/ebbypeter/Archimate-PlantUML/master/images/Example-Group.png)

### Nesting of Components
Nesting allows grouping components hierarchically, improving diagram clarity. There are no limitations on the number of levels of nesting.
The implementation allows nesting of any components inside any other components. When nesting, the element will be displayed as a rectangle with the archimate architype on the top right corner.


Nesting can be enabled in the following pattern
```javascript
Category_ElementName(nameOfTheElement, "description", true) {
    Category_ElementName(uniqueName, "description)
}
```

For example:
```javascript
Business_Product("BusProduct01", "Business Product 01", true) {
    Business_Service("BusService01", "Business Service 01")
    Business_Service("BusService02", "Business Service 02")
    Business_Service("BusService03", "Business Service 03")
}

Technology_Device("TechDevice01", "Technology Device 01", true) {
    Technology_Device("TechDevice02", "Technology Device 02")
    Technology_Device("TechnDevice03", "Technology Device 03", true) {
        Technology_Device("TechnDevice04", "Technology Device 04", false)
        Technology_Device("TechnDevice05", "Technology Device 05")
    }
}
```
Output:
![Nesting Example](./images/Example-Nesting.png)
Note that the representation of Technology-Device element changed from a node to rectangle when nesting was enabled.

### Theme Support
Theme support is enabled and 5 variations are available. All the themes are based on Archimate specifications.

Theme can be enabled by adding the following line.
```javascript
!theme <theme-name> from <theme-folder>

// Example
!theme archimate-saturated from https://raw.githubusercontent.com/plantuml-stdlib/Archimate-PlantUML/master/themes
```

|Theme Name              | Preview                                            |
|------------------------|----------------------------------------------------|
|Default (No line added) | ![default](./images/theme-default.png)             |
|archimate-standard      | ![standard](./images/theme-standard.png)           |
|archimate-alternate     | ![alternate](./images/theme-alternate.png)         |
|archimate-saturated     | ![saturated](./images/theme-saturated.png)         |
|archimate-lowsaturation | ![low saturated](./images/theme-lowsaturation.png) |
|archimate-handwriting   | ![handwriting](./images/theme-handwriting.png)     |

## Example
```javascript
@startuml
!includeurl https://raw.githubusercontent.com/plantuml-stdlib/Archimate-PlantUML/master/Archimate.puml
!theme archimate-standard from https://raw.githubusercontent.com/plantuml-stdlib/Archimate-PlantUML/master/themes

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
If you have any ideas, [open an issue](https://github.com/plantuml-stdlib/Archimate-PlantUML/issues/new) or fork the repository and submit a pull request.

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments
* [PlantUML Reference Guide](http://plantuml.com/PlantUML_Language_Reference_Guide.pdf) - PlantUML Reference Guide
* [Archimate 3.1 Specification](http://pubs.opengroup.org/architecture/archimate3-doc/) - Archimate Specifications
* [Plant UML Archimate Specifications](http://plantuml.com/archimate-diagram) - for archimate spec in PlantUML
* [C4-PlantUML](https://github.com/plantuml-stdlib/C4-PlantUML) - for inspiration, base structure and scripts idea
