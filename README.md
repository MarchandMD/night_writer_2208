<!-- Improved compatibility of back to top link: See: https://github.com/marchandmd/night_writer_2208/pull/73 -->

<a name="readme-top"></a>

<!--
*** Thanks for checking out the night_writer_2208. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">

  <h1 align="center">night_writer_2208</h1>

  <p align="center">
    Text translator from and to standard braille characters
    <br />
    <img src="./assets/images/screenshot1.png">
    <a href="https://github.com/marchandmd/night_writer_2208"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/marchandmd/night_writer_2208">View Demo</a>
    ·
    <a href="https://github.com/marchandmd/night_writer_2208/issues">Report Bug</a>
    ·
    <a href="https://github.com/marchandmd/night_writer_2208/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->

  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>

<!-- ABOUT THE PROJECT -->

## About The Project

This project converts text from Braille into standard English, and vice versa

What did I learn building this:

-   Encapsulation, Abstraction
-   Principles of OOP
-   Object instantiation
-   Reading to and from files
-   .gitignore

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

-   [![Ruby][ruby.com]][ruby-url]
-   [![Rspec][rspec.com]][rspec-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites

ruby v2.7.4

### Installation

1. Clone the repo
    ```sh
    git clone https://github.com/marchandmd/night_writer_2208.git
    ```
2. Install packages
    ```sh
    bundle
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

[I want to write Text to Braille](#text-to-braille)

[I want to write Braille to Text](#braille-to-text)

### Text to Braille

1. `cd` into the `night_writer` directory
2. Open the `text_message_here.txt` file
3. Type a simple message (no punctuation, all lowercase)
4. Copy this command:

```bs
ruby braille_writer.rb text_message_here.txt braille_message_here.txt
```

5. Paste it in the Terminal and hit `return`

The terminal will then display the following message if it was successful:

```bs
$ Created braille_message_here.txt containing <n> characters
```

Open `braille_message_here.txt` to see the braille message generated from text!

### Braille to Text

1. Delete the text message from `text_message_here.txt`,
2. copy this command:

```bs
ruby braille_reader.rb braille_message_here.txt text_message_here.txt
```

3. paste in the terminal and hit `return`
If it was successful you'll see this text in terminal:

```bs
$ Created text_message_here.txt containing <n> characters
```

4. Open `text_message_here.txt` to see the text generated from Braille!

Ta-Da!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

-   README
-   [x] images of project
-   [x] add rspec gem
-   [ ] complete extensions


See the [open issues](https://github.com/marchandmd/night_writer_2208/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Michael Marchand - MichaelDavidMarchand@gmail.com

Project Link: [https://github.com/MarchandMD/night_writer_2208](https://github.com/marchandmd/night_writer_2208)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

-   [Choose an Open Source License](https://choosealicense.com)
-   [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
-   [Img Shields](https://shields.io)
-   [GitHub Pages](https://pages.github.com)
-   [Rubocop](https://rubocop.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/marchandmd/night_writer_2208.svg?style=for-the-badge
[contributors-url]: https://github.com/marchandmd/night_writer_2208/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/marchandmd/night_writer_2208.svg?style=for-the-badge
[forks-url]: https://github.com/marchandmd/night_writer_2208/network/members
[stars-shield]: https://img.shields.io/github/stars/marchandmd/night_writer_2208.svg?style=for-the-badge
[stars-url]: https://github.com/marchandmd/night_writer_2208/stargazers
[issues-shield]: https://img.shields.io/github/issues/marchandmd/night_writer_2208.svg?style=for-the-badge
[issues-url]: https://github.com/marchandmd/night_writer_2208/issues
[license-shield]: https://img.shields.io/github/license/marchandmd/night_writer_2208.svg?style=for-the-badge
[license-url]: https://github.com/marchandmd/night_writer_2208/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/mmarchand1/
[product-screenshot]: images/screenshot.png
[bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[bootstrap-url]: https://getbootstrap.com
[ruby.com]: https://img.shields.io/badge/ruby-v2.7.4-red
[ruby-url]: https://ruby-doc.org/core-2.7.2/
[rspec.com]: https://img.shields.io/badge/rspec-v3.10-success
[rspec-url]: https://rspec.info/documentation/
