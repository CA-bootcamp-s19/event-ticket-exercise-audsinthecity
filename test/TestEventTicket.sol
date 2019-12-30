pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/EventTickets.sol";
import "../contracts/EventTicketsV2.sol";

contract TestEventTicket {
    function testInitialTicketBalance() public {
        EventTickets event1 = EventTickets(DeployedAddresses.EventTickets());

        uint expected = 0;

        Assert.equal(event1.getBuyerTicketCount(tx.origin), expected, "Owner should have 0 tickets initially");
    }

    function testInitialTicketBalanceV2() public {
        EventTicketsV2 event2 = EventTicketsV2(DeployedAddresses.EventTicketsV2());

        uint expected = 0;

        Assert.equal(event2.getBuyerNumberTickets(0), expected, "Owner should have 0 tickets for Event 0 initially");
    }


}