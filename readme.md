 # Make MD Template  
  
 > This playbook will take a code file, passed as a var during execution, pull the comments out of the file, and create a markdown template file in the same directory as the code file. The purpose is to reduce effort of documenting code, and providing a simple outline to guide you through the process.
  
_this file was generated with_ ***make-md***

---

 ### Usage:  
  
 `ansible-playbook make_md_template.yml -e "code_file=<path to file>/<file name>"`

 ---   

 ### Process:  
  
 Get the extension of the file and strip off the rest  
 get the name, without the extension
 get the file path
 "Case statement to take the extension fact and convert it into {{ comment_style }}"
  

--- 
  
### Named Steps:  
  
  
  * set facts for {{ code_file }}"  
  * set {{ file_extension }} fact for the file in {{ file_path }}"  
  * let's see what we captured"  
  * run comment role for {{ comment_style }} commenting style"  
  
  
  
_ansible generated process flow wireframe for make_md_template.md_  
  
---

**Future:**  
> This could be used as part of a pipeline to generate process documentation for the programs / applications being written.  



---


![github.com/dsmith73](https://avatars1.githubusercontent.com/u/44279121?s=60&u=7a933a33b51505f9d6435eeffae1c8156a47dc77&v=4 "github.com/dsmith73")  
