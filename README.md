# 🔧 AMX Mod X Linux Compiler

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg) ![License](https://img.shields.io/badge/license-MIT-green.svg) ![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20Pterodactyl-orange.svg)

---

**AMX Mod X Compiler** is a robust AMX Mod X plugin compiler built specifically for Linux environments and Pterodactyl Panel. Unlike standard Windows-based compilers, this tool allows you to convert your `.sma` files to `.amxx` format directly on Linux without facing common `glibc` or 32-bit library compatibility issues.

Designed for Counter-Strike 1.6 server administrators and developers who need a reliable compilation workflow on their remote servers.

## 🌟 Features

* **Linux Native:** Runs directly on the Linux kernel; no Wine or emulators required.
* **Pterodactyl Ready:** Fully compatible with Pterodactyl Panel egg structures and startup commands.
* **Fast Compilation:** Optimized for speed, compiling plugins in seconds.
* **Auto-Include Detection:** Automatically recognizes standard and custom `.inc` files in your include directory.
* **Detailed Error Reporting:** clearly outputs warnings and errors to the console for easy debugging.

---

## 🚀 Installation & Usage

You can use this tool directly on a Linux VPS/VDS or integrate it into your Pterodactyl panel.

### 🐧 Usage on Linux (VPS/VDS)

1. **Clone the Repository:**

```bash
git clone https://github.com/batuhnzdmr/amxmodx-compiler.git
cd amxmodx-compiler
```

2. **Grant Permissions:**

```bash
chmod +x amxxpc
chmod +x amxxpc32.so
chmod +x compile.sh
```

3. **Prepare Files:**

    * Place your plugin source files `(.sma)` into the `sma` directory.
    * Place any required include files `(.inc)` into the `include` directory.

5. **Run the Script:**

```bash
./compile.sh
```

5. **Result:**

* Compilation complete! You can find your compiled `(.amxx)` files in the `amxx` directory.


### Usage on Pterodactyl (Docker) [TO DO]

---

### 🛡️ License

This project is licensed under the [MIT](LICENSE) License.

---

##### 💼 Powered by [HOSTIBU](https://github.com/hostibu)
##### ❤️ Made by [batuhnzdmr](https://github.com/batuhnzdmr)
