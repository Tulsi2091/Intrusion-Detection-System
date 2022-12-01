pragma solidity ^0.4.0;

contract Prac5
{
    uint256 private log;
    uint256 private result;
    function set_log(uint256 _log) public
    {
        log = _log;
    }
    function get_result() public payable returns(uint256)
    {
        if (log>=0 && log<=100) 
        { 
            result = 0; //weak attack
        } 
        else if (log>=101 && log<=200) 
        { 
            result = 1; //intermediate attack
        } 
        else if (log>=201 && log<=300)
        {  
            result = 2; //Strong attack
        } 
        else 
        { 
            result = 10;
        }
        return result;
    }
}
