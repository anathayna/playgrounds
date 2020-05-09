import UIKit

protocol AdvancedLifeSupport {
    func performCR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me whay happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCR() {
        print("The paramedic does chest compressions, 30 per second")
    }
}

class Doctor: AdvancedLifeSupport {
    init(handle: EmergencyCallHandler) {
        handle.delegate = self
    }
    
    func performCR() {
        print("The doctor does chest compressions, 30 per second")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCR() {
        super.performCR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)
let angela = Paramedic(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
