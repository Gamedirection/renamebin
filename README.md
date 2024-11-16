# renamebin
This allows me to rename a "inject*.bin" to "inject.bin" for Hak5 Rubber Ducky

```
# Inject File Management Script

This repository contains a bash script designed to manage `inject*.bin` files within a specified directory. The script handles the renaming and deletion of these files following specific logic.

## Table of Contents

1. [Getting Started](#getting-started)
2. [Usage](#usage)
3. [Script Logic](#script-logic)
4. [Contributing](#contributing)
5. [License](#license)

## Getting Started

Clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
```

Ensure you have the necessary permissions to execute scripts:

```bash
chmod +x script.sh
```

## Usage

Run the script in the directory containing the `inject*.bin` files:

```bash
./script.sh
```

## Script Logic

The script operates with the following logic:

1. **Directory Navigation**: It navigates to the specified directory where the `inject*.bin` files are located.
2. **File Counting**: It counts and checks the presence of files matching the pattern `inject*.bin`.
3. **Existence Check**: It specifically checks if `inject.bin` exists in the directory.
4. **Conditional Actions**:
   - If only `inject.bin` exists, no action is taken.
   - If there are multiple `inject*.bin` files:
     - Deletes `inject.bin` if it exists.
     - Renames one of the `inject*.bin` files to `inject.bin`.
   - If no `inject*.bin` files are found, a message is displayed indicating no files to rename.

## Contributing

We welcome contributions! Please fork the repository and submit a pull request with proposed changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
```

### Notes:
- Replace `yourusername` and `your-repo-name` with your actual GitHub username and repository name.
- Include a `LICENSE` file in your repository if you want to specify a license.
- For contributions, you may want to add more detailed guidelines or a link to a `CONTRIBUTING.md` file.
