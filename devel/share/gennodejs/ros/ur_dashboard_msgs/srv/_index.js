
"use strict";

let RawRequest = require('./RawRequest.js')
let GetSafetyMode = require('./GetSafetyMode.js')
let IsProgramSaved = require('./IsProgramSaved.js')
let GetLoadedProgram = require('./GetLoadedProgram.js')
let IsInRemoteControl = require('./IsInRemoteControl.js')
let Popup = require('./Popup.js')
let AddToLog = require('./AddToLog.js')
let GetProgramState = require('./GetProgramState.js')
let IsProgramRunning = require('./IsProgramRunning.js')
let Load = require('./Load.js')
let GetRobotMode = require('./GetRobotMode.js')

module.exports = {
  RawRequest: RawRequest,
  GetSafetyMode: GetSafetyMode,
  IsProgramSaved: IsProgramSaved,
  GetLoadedProgram: GetLoadedProgram,
  IsInRemoteControl: IsInRemoteControl,
  Popup: Popup,
  AddToLog: AddToLog,
  GetProgramState: GetProgramState,
  IsProgramRunning: IsProgramRunning,
  Load: Load,
  GetRobotMode: GetRobotMode,
};
