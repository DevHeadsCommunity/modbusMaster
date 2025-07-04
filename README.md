# MODBUS RTU MASTER-SLAVE Firmware Implementation on STM32 MCU

> Watch the full implementation on our YouTube channel and see it in action:  
> 🔗 [Watch Now](https://www.youtube.com/live/FV6_q8X_ouA?si=fERtnyLyN1bbx7Me)  
---

## 📚 Table of Contents

- [AGENDA](#agenda)
- [OVERVIEW](#overview)
- [MAX484 TTL TO RS485 CONVERTER](#max484-ttl-to-rs485-converter)
- [CONNECTION DETAILS](#connection-details)
- [HIGH-LEVEL IMPLEMENTATION](#high-level-implementation)
- [MODBUS MASTER FIRMWARE](#modbus-master-firmware)
- [MODBUS SLAVE FIRMWARE](#modbus-slave-firmware)
- [TIMMING & EVENT ANALYSIS](#timming--event-analysis)
- [PROJECT MASTER-SLAVE](#project-master-slave)
- [SUMMARY](#summary)
- [LIVE DEMO](#live-demo)
- [THANK YOU](#thank-you)

---

## AGENDA

1. Overview  
2. 1-Master, Multi-Slave  
3. Modbus Master Firmware  
4. Modbus Slave Firmware  
5. Events and polling rate timing rate  
6. Live Demo: Implement Modbus RTU Master Slave on STM32 MCU  
7. Summary  
8. Ask Questions?

---

## OVERVIEW

- Allows single controller to manage multiple devices efficiently  
- Provides Interoperability between multiple Modbus RTU’s  
- Ease of integration due to widely adopted by many manufacturer  
- Efficient & Reliable communication: deterministic response, error checking  
- Suitable for Industry environment: with RS485 physical layer communication up to several hundreds of meter with better noise immunity  
- Scalability for Multi-device communication:  
  - Device addressing  
  - Polling mechanism  

---

## MAX484 TTL TO RS485 CONVERTER

- Input Voltage: 5V DC  
- Output Voltage: RS485 differential signal  
- Communication: Half-duplex RS485  
- Distance: Up to several hundred meters  

---

## CONNECTION DETAILS

- MODBUS MASTER  
- MODBUS SLAVE  

---

## HIGH-LEVEL IMPLEMENTATION

**Examples of system architecture:**

- STM32 + RTC + MAX485 + I2C OLED + Switch  
- Master and multiple slaves (ID 0x01, 0x02)  
- Switch status polling:  
  - Slave-1: 200 ms  
  - Slave-2: 600 ms  
- Data displayed on OLED  
- Timestamp synchronization  

---

## MODBUS MASTER FIRMWARE

- Read RTC time from serial on time update command  
- Broadcast RTC time on Modbus switch pressed  
- Poll Switch status every 200ms from Slave-1  
- Poll Switch status every 600ms from Slave-2  
- Display time on OLED  
- Display Slave-1 event time stamp  
- Display Slave-2 event time stamp  

---

## MODBUS SLAVE FIRMWARE

- 8 Modbus register to receive the time from the master  
- 1 discrete input for switch status  
- Whenever Switch pressed, capture the status in discrete input  
- Display time on OLED  
- Display last poll received time stamp  
- Switch event time stamp  

---

## TIMMING & EVENT ANALYSIS

- Switch pressed (Slave1)  
- Switch pressed (Slave2)  
- Event updated to master from Slave1  
- Event updated to master from Slave2  

Visual data shows event update intervals (in milliseconds):  
200 → 2400 → 2200 → ...  

---

## PROJECT MASTER-SLAVE

---

## SUMMARY

### ✅ Advantages

- Low cost, better noise immunity  
- Scalable: connect up to 32 Slave devices  
- Best suited for monitoring devices in industrial automation  

### ⚠️ Limitations

- Avoid using for real-time controlling  
- Continuous polling by master poses risk of timing mismatch  

---

## LIVE DEMO

Watch the full implementation of Modbus RTU Master-Slave Firmware on STM32 MCU:  
🔗 [Watch on YouTube](https://www.youtube.com/live/FV6_q8X_ouA?si=fERtnyLyN1bbx7Me)

---

## THANK YOU

**Thanks for being a DevHead!**  
Join our community: [https://discord.gg/DevHeads](https://discord.gg/DevHeads)  
'TIL NEXT TIME!  
Devheads.io – A place for every dev
