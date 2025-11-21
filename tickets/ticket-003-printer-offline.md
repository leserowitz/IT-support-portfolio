# Ticket #003 – Network printer offline

**User:** Accounting  
**Issue:** Printer not reachable from any PC.  
**Cause:** Printer received a new IP address after DHCP refresh.  

**Resolution:**  
1. Checked printer panel → found new IP  
2. Updated printer port settings in Windows  
3. Restarted spooler  
4. Test page successful  

**Prevention:** Assign static IP to shared printers.
