import Foundation
import Carbon

func string(_ source:TISInputSource,_ key:CFString)->String {
    guard let p=TISGetInputSourceProperty(source,key) else{return ""}
    return Unmanaged<CFString>.fromOpaque(p).takeUnretainedValue() as String
}
let args=CommandLine.arguments
let command=args.count>1 ? args[1] : "list"
if command=="register",args.count>2 {
    let status=TISRegisterInputSource(URL(fileURLWithPath:args[2]) as CFURL)
    print("register: \(status)");if status != noErr {exit(1)}
}
if command=="current" {
    let s=TISCopyCurrentKeyboardInputSource().takeRetainedValue()
    print(string(s,kTISPropertyInputSourceID));exit(0)
}
let sources=TISCreateInputSourceList(nil,true).takeRetainedValue() as! [TISInputSource]
if command=="list" || command=="register" {
    for s in sources {
        let id=string(s,kTISPropertyInputSourceID)
        if command=="list" || id.hasPrefix("local.kobun.inputmethod.") {
            print(id+"\t"+string(s,kTISPropertyLocalizedName))
        }
    }
} else if ["enable","select","disable"].contains(command),args.count>2 {
    guard let s=sources.first(where:{string($0,kTISPropertyInputSourceID)==args[2]}) else {fputs("Input source not found\n",stderr);exit(2)}
    let result:OSStatus
    if command=="enable" {result=TISEnableInputSource(s)}
    else if command=="disable" {result=TISDisableInputSource(s)}
    else {result=TISSelectInputSource(s)}
    print("\(command): \(result)");if result != noErr {exit(1)}
}
