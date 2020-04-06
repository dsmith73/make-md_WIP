# Make .MD files from the comments of parsed files  
>This will allow us to capture the process flow of a program / application in a new file for easy reference, without the clutter of the code.  

---

**Steps:**  
  * Pass a file to this playbook  
  * The playbook will parse the file  
    * Extract the comments  
    * Write the comments to a file of the same name, with a .md extension  

```
 this will capture commented lines that start with the following characters: "#, ,\,//,\*,/*,;"  
 NOTE: it does assume a space after the comment character(s).  
 Group 1 is outdented comments  
 Group 2 is indented comments  
```

---

**Future:**  
> This could be used as part of a pipeline to generate process documentation for the programs / applications being written.  



---


![github.com/dsmith73](https://avatars1.githubusercontent.com/u/44279121?s=60&u=7a933a33b51505f9d6435eeffae1c8156a47dc77&v=4 "github.com/dsmith73")  
