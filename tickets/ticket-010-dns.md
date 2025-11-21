# Ticket #010 – Internal website not loading

**User:** Logistics  
**Issue:** Internal tool unreachable due to network error.  
**Cause:** DNS cache corruption on client PC.  

**Resolution:**  
1. Ran `ipconfig /flushdns`  
2. Renewed IP address  
3. Tested internal host – reachable  
4. Website loaded normally  

**Prevention:** Add DNS flush command to user support shortcuts.
