//
//  CalculateInfo.swift
//  Spoke Calculator
//
//  Created by Fed on 27.05.2022.
//

import Foundation

struct CalculateInfo {
    
    let swithId: String
    
    var titleOfPopUp: String {
        switch swithId {
        case "spoke":
            return "Количество спиц"
        case "crosses":
            return "Сколько крестов"
        case "erd":
            return "Внутренний диаметр обода"
        case "diameterFlance":
            return "Диаметр фланца"
        case "wleft":
            return "Расстояние от центра до лева"
        default:
            return "Расстояние от центра до права"
        }
    }
    
    var textOfPopUp: String {
        switch swithId {
        case "spoke":
            return "В это поле вам необходимо ввести количество спиц, соответсвующее количеству отверстий во втулке и ободе"
        case "crosses":
            return "Укажите количество пересечений спиц, с которым вы хотите собрать колесо"
        case "erd":
            return "Внутренний диаметр обода или ERD – обычно указывается производителем в техническом описании обода, также вы можете измерить его самостоятельно: диаметр обода от внутренней до внутренней стенки"
        case "diameterFlance":
            return "Диаметр фланца втулки можно найти в техническом описании втулки на сайте производителя, измерить самостоятельно его будет сподручнее с помощью штангенциркуля"
        case "wleft":
            return "Расстояние от центра втулки до левого фланца, измертье его самостоятельно согласно схеме"
        default:
            return "Расстояние от центра втулки до правого фланца, измертье его самостоятельно согласно схеме"
        }
    }
    
    
    
}
