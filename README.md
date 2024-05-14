# HtmlMonographFile Plugin

## Introduction

The HtmlMonographFile plugin allows HTML files to be opened and viewed within the same website that supports the OMP platform, rather than being downloaded and viewed locally. This enhances the user experience by providing seamless access to HTML content directly on the site.

## Features

- View HTML files directly on the website without downloading.
- Enhanced display of HTML files for OPUS requirements:
  - Display of footnotes.
  - Display of sidenotes.
  - Enhanced rendering of images and tables.
  - Integration with magnificPopup for better content presentation.

## Installation

1. Download the plugin files.
2. Place the plugin in the appropriate directory within your OMP installation:
    ```bash
    OMP=/path/to/OMP_INSTALLATION
    cd $OMP/plugins/importexport
    git clone https://github.com/PAYS-upcite/Opus-OMP-HtmlMonographFile-Plugin
    ```

## Configuration

1. Navigate to the plugin management interface in your OMP installation:
   `{OMP_SERVER}/index.php/{MY_PRESS}/management/importexport/plugin/HtmlMonographFilePlugin`
2. Ensure the plugin is enabled and configured as per your requirements.

## Usage

- The plugin will automatically handle the display of HTML files uploaded to the platform.
- HTML files will be opened in an embedded viewer within the website, with improved display features enabled.

## Credits

### Main Developer

- PKP team

### Contributors

- PAYS-upcite

## Licensing

The HtmlMonographFile plugin is licensed under GPLv3.
