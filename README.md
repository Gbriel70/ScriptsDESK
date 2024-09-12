# Criação de arquivo README.md com o conteúdo traduzido para inglês

# Conteúdo do README
readme_content = """
# My Desktop Scripts

This repository contains my current scripts that I find essential for my desktop setup with dwmblocks.

## How to Use

To use these scripts, follow the steps below:

1. **Add the scripts to an executable path on your system**  
   Copy the scripts to a directory that is in your `$PATH`. An example of a directory where you can place them is `/bash/bin` (or any other executable path on your system).

2. **Integrate with dwmblocks**  
   After adding the scripts to the executable directory, add them to your `dwmblocks` configuration so they are displayed in the status bar.

3. **Recompile dwmblocks**  
   After setting up the scripts, recompile `dwmblocks` by running the following commands in the terminal:

   ```bash
   make clean install
