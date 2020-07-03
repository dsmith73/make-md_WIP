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
 
[![](https://mermaid.ink/img/eyJjb2RlIjoiZ3JhcGggVERcbiAgYTEoKG1ha2UtbWQueW1sKSkgLS0-IGEye3tcIkRldGVybWluZSBMYW5ndWFnZVwifX1cbiAgYTIgLS0-IGIxKGZhOmZhLWNvZGUgYW5zaWJsZSlcbiAgYTIgLS0-IGMxKGZhOmZhLWNvZGUgcHl0aG9uKVxuICBhMiAtLT4gZDEoZmE6ZmEtY29kZSBqYXZhc2NyaXB0KVxuICBhMiAtLT4gZTEoZmE6ZmEtY29kZSBodG1sKVxuICBhMiAtLT4gZjEoZmE6ZmEtY29kZSBnb2xhbmcpXG4gIGEyIC0tPiBnMShmYTpmYS1jb2RlIHBvd2Vyc2hlbGwpXG4gIGEyIC0tPiBoMShmYTpmYS1jb2RlIGMrKylcbiAgYTIgLS0-IGkxKGZhOmZhLWNvZGUgYmFzaClcblxuICBjMSAtLT4gYTNcbiAgZTEgLS0-IGEzXG4gIGYxIC0tPiBhM1xuICBnMSAtLT4gYTNcbiAgaDEgLS0-IGEzXG4gIGkxIC0tPiBhM1xuICBiMSAtLT4gYTNcbiAgZDEgLS0-IGEzW1tleHRyYWN0IGNvbW1lbnRzXV1cblxuICBhMyAtLT4gYTRbW2NyZWF0ZSAubWRdXSIsIm1lcm1haWQiOnsidGhlbWUiOiJuZXV0cmFsIn0sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)](https://mermaid-js.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiZ3JhcGggVERcbiAgYTEoKG1ha2UtbWQueW1sKSkgLS0-IGEye3tcIkRldGVybWluZSBMYW5ndWFnZVwifX1cbiAgYTIgLS0-IGIxKGZhOmZhLWNvZGUgYW5zaWJsZSlcbiAgYTIgLS0-IGMxKGZhOmZhLWNvZGUgcHl0aG9uKVxuICBhMiAtLT4gZDEoZmE6ZmEtY29kZSBqYXZhc2NyaXB0KVxuICBhMiAtLT4gZTEoZmE6ZmEtY29kZSBodG1sKVxuICBhMiAtLT4gZjEoZmE6ZmEtY29kZSBnb2xhbmcpXG4gIGEyIC0tPiBnMShmYTpmYS1jb2RlIHBvd2Vyc2hlbGwpXG4gIGEyIC0tPiBoMShmYTpmYS1jb2RlIGMrKylcbiAgYTIgLS0-IGkxKGZhOmZhLWNvZGUgYmFzaClcblxuICBjMSAtLT4gYTNcbiAgZTEgLS0-IGEzXG4gIGYxIC0tPiBhM1xuICBnMSAtLT4gYTNcbiAgaDEgLS0-IGEzXG4gIGkxIC0tPiBhM1xuICBiMSAtLT4gYTNcbiAgZDEgLS0-IGEzW1tleHRyYWN0IGNvbW1lbnRzXV1cblxuICBhMyAtLT4gYTRbW2NyZWF0ZSAubWRdXSIsIm1lcm1haWQiOnsidGhlbWUiOiJuZXV0cmFsIn0sInVwZGF0ZUVkaXRvciI6ZmFsc2V9)  

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

![github.com/dsmith73](https://avatars1.githubusercontent.com/u/44279121?s=60&u=7a933a33b51505f9d6435eeffae1c8156a47dc77&v=4 "github.com/dsmith73")  
