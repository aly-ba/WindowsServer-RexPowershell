Filename: techskills-powershell-scripting-1-3-1-hash-tables      
Show Name: PowerShell Scripting  
Topic Name: Variables  
Episode Name: Hash Tables  
Description: This episode is about using hash tables in PowerShell. You will see  
how to create hash tables. You will learn how to use hash tables to store key / value  
pairs, as well as create an ordered dictionary.
Keywords: [keyword1,keyword2,keyword3]

---

### Hash Tables

* Hash Table
  - Key/Value pairs
  - Non-deterministic order
  - Create a hash table using @ symbol
  - Enclose hash table in {}
  - Separate key from value with =
  - Separate key/value pairs with ; or line break
    - `@{svr01='10.10.0.201';svr02='10.10.0.202'}`
  - Store hash table in a variable
    - `$ip=@{svr01='10.10.0.201';svr02='10.10.0.202'}`
  - To retrieve hash table, keys or values
    - `$ip`
    - `@ip.keys`
    - `@ip.values`
  - To retrieve value for a specific key
    - `$ip.svr02`
  - Keys and values can have any data type, and multiple types  

```
$svcInfo=@{
'Dhcp' = (Get-Service Dhcp)
'Dnscache' = (Get-Service Dnscache)
}

$svcInfo.Dnscache
```
* Ordered Dictionary
  - Keys are always in the order of creation
  - Add `[ordered]` attribute before @ during creation  

```
Change @ip to [ordered]@ip
@ip
```
