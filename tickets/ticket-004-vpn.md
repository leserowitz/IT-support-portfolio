# Ticket #004 – VPN cannot connect

**User:** Remote employee  
**Issue:** VPN client stuck on “Negotiating…”.  
**Cause:** Missing certificate after Windows update.  

**Resolution:**  
1. Re-installed VPN certificate  
2. Cleared network adapter configuration  
3. Rebooted system  
4. VPN connected successfully  

**Prevention:** Add certificate check to remote update script.
