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

[![](https://mermaid.ink/img/eyJjb2RlIjoiZ3JhcGggTFJcbiAgYTEoKG1ha2UtbWQueW1sKSkgLS0-IGEye3tcIkRldGVybWluZSBTdHlsZVwifX1cbiAgYTIgLS4tPiBiMShmYTpmYS1jb2RlIEhhc2gpXG4gIGEyIC0uLT4gYzEoZmE6ZmEtY29kZSBTbGFzaClcbiAgYTIgLS4tPiBkMShmYTpmYS1jb2RlIFNlbWlDb2wpXG4gIGEyIC0uLT4gZTEoZmE6ZmEtY29kZSBXZWIpXG4gIGEyIC0uLT4gZjEoZmE6ZmEtY29kZSBEYXNoRGFzaClcbiAgYTIgLS4tPiBnMShmYTpmYS1jb2RlIGV0Yy4uLilcblxuICBjMSAtLi0-IGEzXG4gIGUxIC0uLT4gYTNcbiAgZjEgLS4tPiBhM1xuICBnMSAtLi0-IGEzXG4gIGIxIC0uLT4gYTNcbiAgZDEgLS4tPiBhM1tbZXh0cmFjdCBjb21tZW50c11dXG5cbiAgYTMgLS0-IGE0W1tjcmVhdGUgLm1kXV0iLCJtZXJtYWlkIjp7InRoZW1lIjoiZm9yZXN0In0sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)](https://mermaid-js.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiZ3JhcGggTFJcbiAgYTEoKG1ha2UtbWQueW1sKSkgLS0-IGEye3tcIkRldGVybWluZSBTdHlsZVwifX1cbiAgYTIgLS4tPiBiMShmYTpmYS1jb2RlIEhhc2gpXG4gIGEyIC0uLT4gYzEoZmE6ZmEtY29kZSBTbGFzaClcbiAgYTIgLS4tPiBkMShmYTpmYS1jb2RlIFNlbWlDb2wpXG4gIGEyIC0uLT4gZTEoZmE6ZmEtY29kZSBXZWIpXG4gIGEyIC0uLT4gZjEoZmE6ZmEtY29kZSBEYXNoRGFzaClcbiAgYTIgLS4tPiBnMShmYTpmYS1jb2RlIGV0Yy4uLilcblxuICBjMSAtLi0-IGEzXG4gIGUxIC0uLT4gYTNcbiAgZjEgLS4tPiBhM1xuICBnMSAtLi0-IGEzXG4gIGIxIC0uLT4gYTNcbiAgZDEgLS4tPiBhM1tbZXh0cmFjdCBjb21tZW50c11dXG5cbiAgYTMgLS0-IGE0W1tjcmVhdGUgLm1kXV0iLCJtZXJtYWlkIjp7InRoZW1lIjoiZm9yZXN0In0sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)  

--- 
  
### Named Steps:  
  
  * set facts for {{ code_file }}"  
  * set {{ file_extension }} fact for the file in {{ file_path }}"  
  * let's see what we captured"  
  * run comment role for {{ comment_style }} commenting style"  

---

**Future:**  
> This could be used as part of a pipeline to generate process documentation for the programs / applications being written.  

---

<table>
    <thead>
        <tr>
            <th colspan=3>Comment Style</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Hash</td>
            <td><code> # </code></td>
            <td><code> <#   #> </code></td>
        </tr>
        <tr>
            <td>Slash</td>
            <td><code> // </code></td>
            <td><code> /*  */ </code></td>
        </tr>
        <tr>
            <td>Web</td>
            <td><code> &lt;!--  --> </code></td>
            <td><code></code></td>
        </tr>
        <tr>
            <td>Semi Colon</td>
            <td><code> ; </code></td>
            <td><code></code></td>
        </tr>
        <tr>
            <td>Dash Dash</td>
            <td><code> -- </code></td>
            <td><code></code></td>
        </tr>
        <tr>
            <td>Remark</td>
            <td><code> REM </code></td>
            <td><code></code></td>
        </tr>
    </tbody>
</table>

---

_ansible generated process flow wireframe for make_md_template.md_  

---

|[#dsmith73](https://github.com/dsmith73)|
| :---: |
|![github.com/dsmith73](https://avatars1.githubusercontent.com/u/44279121?s=60&u=7a933a33b51505f9d6435eeffae1c8156a47dc77&v=4 "github.com/dsmith73")  
