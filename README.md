# D Flip-Flop Verification using SystemVerilog UVM

## Overview
This project demonstrates the functional verification of a D Flip-Flop (Sequential Circuit) using SystemVerilog and UVM methodology.

The verification environment is built using reusable UVM-style components such as:
- Transaction
- Sequence
- Driver
- Monitor
- Scoreboard
- Agent
- Environment
- Test

The testbench generates randomized stimulus and verifies DUT functionality automatically using scoreboard comparison.

---

## DUT Description

The Design Under Test (DUT) is a positive edge-triggered D Flip-Flop.

### Functionality
- On every positive edge of clock:
  - If reset is active → output becomes 0
  - Else output follows input `d`

---

## Verification Components

### Transaction
Contains randomized input data and output fields.

### Sequence
Generates randomized transactions for verification.

### Driver
Drives transaction data to DUT through interface signals.

### Monitor
Monitors DUT signals and sends collected data to scoreboard.

### Scoreboard
Compares expected and actual DUT outputs.

### Agent
Connects driver, monitor, and sequencer.

### Environment
Instantiates and connects all verification components.

### Test
Controls verification flow and starts sequences.

### Top Testbench
Instantiates DUT, interface, clock generation, and test environment.

 
