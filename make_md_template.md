# make_md_template.md  

--- 
  
### Comments:  
  
   # Make MD Template     > This playbook will take a code file, passed as a var during execution, pull the comments out of the file, and create a markdown template file in the same directory as the code file. The purpose is to reduce effort of documenting code, and providing a simple outline to guide you through the process.   ---   ### Usage:     `ansible-playbook make_md_template.yml -e "code_file=<path to file>/<file name>"` ---    ### Process:     Get the extension of the file and strip off the rest   get the name, without the extension get the file path "Case statement to take the extension fact and convert it into {{ comment_style }}"  

--- 
  
### Named Steps:  
  
  
set facts for {{ code_file }}"set {{ file_extension }} fact for the file in {{ file_path }}"Let's see what we captured"run comment role for {{ comment_style }} commenting style"  
  
  
_ansible generated process flow wireframe for make_md_template.md_  
  
