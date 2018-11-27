pragma solidity ^0.4.24;

// Pushup metadata - describe what a keyword "pushup" looks like demonstration (gif) + how many reps to complete
// Method of verification = video upload.
// 
// Can dispute contract within x days.

contract Gym {
    bool public contractComplete; //false
    uint timeStart; //now; when user create contract
    address userAddress;
    
    string instructionSet;  //bv.  Complete 20 pushup/reps in one live video.
    uint32 timeEnd; //Specified deadline by user;  bv. 24hours, 72hours, 1week etc.
    string vidAddress;  // Location of video http://myvidstorage/ipfs/adsf.mp4
    
    uint countReps; 
    uint vidcount;  //bv. 1/1 videos submitted (1 of 1)  bv.  2/5 videos submitted (2 of 5) 
    
    constructor (string _instructions, uint32 _timeEnd,  uint _countReps) {
        timeStart = now;
        userAddress = msg.sender();
        instructionSet = _instructions;
        timeEnd = _timeEnd;
        countReps = _countReps;
    }
    
    //Called later when upload a proof video.  When user uploads his first video - then ask if there is more to come or this one fulfills requirements.
    function getWebInput (string _vidAddress, uint _vidcount) {
        vidAddress = _vidAddress;
        vidcount = _vidcount;
    }
    
    function Arbitration () view returns (bool) {
        contractComplete = true;
    }
    
    
}
