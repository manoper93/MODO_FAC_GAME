# 🔥 Task Automation Batch Scripts

This project consists of two batch scripts designed for task automation. The scripts enable conditional execution based on a mode (e.g., "Faculdade" or "Recuperar") and user interaction. These scripts use a configuration file to determine tasks and provide a dynamic interface for user control.

---

## 🌟 **Project Objective**
The aim of these scripts is to:

- Automate task management based on system status.
- Dynamically process tasks from a configuration file.
- Provide user interaction to choose between different modes.

---

## 📂 **Structure Overview**
### **Key Components**
- **Configuration File**: `MODO_FAC_CODE.txt` contains task IDs for different modes.
- **Batch Scripts**:
  - **Mode-Driven Automation**: Executes tasks based on system conditions (e.g., battery status).
  - **Interactive Script**: Allows user input to select and execute tasks dynamically.

---

## 🔧 **Features Implemented**
1. **Dynamic Task Management**:
   - Executes or terminates tasks based on the specified mode.
   - Fetches tasks dynamically from the configuration file.
2. **User Interaction**:
   - Allows users to choose between "Faculdade," "Recuperar," or terminating the script.
3. **Condition-Based Execution**:
   - Automates task execution based on system battery status.

---

## 📚 **Code Overview**

### **Batch Script 1: Mode-Driven Automation**
#### **Functionality**
- Reads `MODO_FAC_CODE.txt` to fetch task IDs.
- Checks battery status using `wmic path Win32_Battery`.
- Executes tasks based on the following modes:
  - **Faculdade**:
    - Terminates processes listed in the second line of `MODO_FAC_CODE.txt`.
  - **Recuperar**:
    - Executes commands listed in the third line of `MODO_FAC_CODE.txt`.

---

## 📚 **Configuration File Structure**
- **Path**: `C:\MODO_FAC_CODE.txt`
- **Content Format**:
  - First Line: Placeholder or unused.
  - Second Line: Task IDs for "Faculdade" mode.
  - Third Line: Task IDs or commands for "Recuperar" mode.

Example:
```
# Configuration File
1 2 3
notepad.exe calc.exe
```

---

## 📚 **How to Use the Project**
1. **Prepare the Configuration File**:
   - Create `C:\MODO_FAC_CODE.txt` with task IDs or commands.

2. **Run the Script**:
   - For automated execution:
     ```
     batch_script_1.bat
     ```
   - For interactive mode:
     ```
     batch_script_2.bat
     ```

3. **Modes**:
   - "Faculdade": Terminates tasks defined in the configuration file.
   - "Recuperar": Executes commands defined in the configuration file.

---

## 🎯 **Next Steps**
- Add advanced error handling for missing files or invalid configurations.
- Enable logging for task execution.
- Expand configuration file capabilities for more complex scenarios.

---

Thank you for exploring this project! 💡

---

## Screenshot's

![Captura de ecrã 2023-04-16 145639](https://user-images.githubusercontent.com/70864023/232316240-0b9ec493-ee5e-42a7-aa23-8f739c00b381.png)
![Captura de ecrã 2023-04-16 145659](https://user-images.githubusercontent.com/70864023/232316226-8799455b-23f7-44db-a4de-df1a42a0a9b0.png)

## Github Link

[Battery-Game_Mode_Automation](https://github.com/manoper93/Battery-Game_Mode_Automation)
