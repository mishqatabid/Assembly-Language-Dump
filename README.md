# Assembly Language Code Dump

## HOW TO RUN THESE SCRIPTS:

**STEP 1:** Open up your Visual Studio 2022 (or any)

**STEP 2:** Now go to the `Creat New Project Menu`.

**STEP 3:** In the Language section choose `C++` and then choose `Empty Project`.

![image1](https://github.com/user-attachments/assets/b72971df-7412-4d11-8aee-3391d9d73c15)

**STEP 4:** In the `Project` section, first right click then from the `Build Dependencies` section choose `Build Customization`.

![image2](https://github.com/user-attachments/assets/f9db49ef-0809-44b8-b29f-387f76c12f25)

**STEP 5:** Now click the `masm` check box.

![image3](https://github.com/user-attachments/assets/849c3086-384f-44ce-9c5e-5119624f9190)

**STEP 6:** After checking the check box again right click in the `Project` section and from the `Add` section choose `New Item`.

![image4](https://github.com/user-attachments/assets/7b17fe63-5c73-46aa-beb1-d647c1c2c22c)

**STEP 7:** Write the file name as follow and make sure to use `.asm` extension.

![image5](https://github.com/user-attachments/assets/df6a79cd-c170-4b07-85b9-c8e046288bc0)


**STEP 8:** After this you'll have your code editor ready

![image6](https://github.com/user-attachments/assets/b3b2a4be-07de-4476-93a0-39ea190113bb)


## Setting Irvine32 library

Here is a step by step method to set up `Irvine32` Library.

**STEP 1:** First search for `Irvine32` library on your browser and open the following git repository.

![Untitled](https://github.com/user-attachments/assets/ff05359e-6812-40e1-b1cf-6cb520e4ddef)


**STEP 2:** In the repo, click the `Code` button in the top right corner and then click on the download zip file.

![Untitled1](https://github.com/user-attachments/assets/140e5420-51cd-4289-a13f-9130fef16f79)

**STEP 3:** Now extract the file from the zipped folder.

**STEP 4:** Copy the path of the extracted file. I have saved the file in the following location.

**Location:** `D:\4TH SEMESTER\Irvine32-master`

**STEP 5:** Now set the Visual Studio for assembly language.

**STEP 6:** Move to `Project > Properties`.

![Untitled3](https://github.com/user-attachments/assets/50eb644d-61bb-405e-a08a-bfb114d35c2b)

**STEP 7:** In properties move to the `Linker > Additional Library` Dependencies and then paste your copied file path there.

![image1](images/image4.png)

**STEP 8:** Now click on the `Input` tab. In the Additional Dependency section add `irvine32.lib`.

![Untitled5](https://github.com/user-attachments/assets/a977fcc2-923a-4b25-a5e4-52b93327da64)

**STEP 9:** Now in the `Microsoft Macro Assembly > Include Paths` enter the file path again.

![image1](images/Untitled6.png)

**STEP 10:** Verification

- Write the following code to verify everything.

```assembly
INCLUDE Irvine32.inc
.data
prompt db "Enter your name: ", 0
Computer Organization And Assembly Language 3
buffer db 20 dup(0)
greeting db "Hello, ", 0
newline db 13, 10, 0
.code
main PROC
 mov edx, OFFSET prompt
 call WriteString
 mov edx, OFFSET buffer
 mov ecx, SIZEOF buffer
 call ReadString
 mov edx, OFFSET greeting
 call WriteString
 mov edx, OFFSET buffer
 call WriteString
 mov edx, OFFSET newline
 call WriteString
 exit
main ENDP
END main
```

**Respective Output:**

![Picture2](https://github.com/user-attachments/assets/26b537c8-69e0-49bd-8558-af30371dcce6)
