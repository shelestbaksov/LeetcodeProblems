//
//  MinimumHoursOfTrainingToWinCompetition.swift
//  Problems
//
//  Created by Leysan Latypova on 20.09.2022.
//

import Foundation

func minNumberOfHours(_ initialEnergy: Int, _ initialExperience: Int, _ energy: [Int], _ experience: [Int]) -> Int {
    var currentEnergy = initialEnergy
    var currentExperience = initialExperience
    var result = 0
    
    for energ in energy {
        if energ >= currentEnergy {
            let difference = energ - currentEnergy + 1
            result += difference
            currentEnergy += difference
        }
        currentEnergy -= energ
    }
    
    for experienc in experience {
        if experienc >= currentExperience {
            let difference = experienc - currentExperience + 1
            result += difference
            currentExperience += difference
        }
        currentExperience += experienc
    }

    return result
}
