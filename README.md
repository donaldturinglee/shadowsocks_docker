<a id="readme-top"></a>

<div align="center">
  <h3 align="center">Shadowsocks Docker</h3>

  <p align="center">
    A Docker-based solution for quickly setting up and deploying Shadowsocks-libev and V2Ray-plugin proxy services across different platforms.
    <br />
    <a href="https://github.com/donaldturinglee/shadowsocks_install_script/issues/new?labels=bug&template=bug_report.md">Report Bug</a>
    &emsp;
    <a href="https://github.com/donaldturinglee/shadowsocks_install_script/issues/new?labels=enhancement&template=feature_request.md">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project
This project provides a Docker-based solution for setting up and deploying Shadowsocks-libev and V2Ray-plugin proxy services. By using Docker, users can easily deploy and run these proxy services quickly on different platforms.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/)  
- [ACME](https://github.com/acmesh-official/acme.sh)  
- A domain

### Installation

1. Install from git
   ```sh
   git clone https://github.com/donaldturinglee/shadowsocks_docker.git
   cd shadowsocks_docker
   docker build -t donaldturinglee/shadowsocks-libev .
   ```

2. Apply for an SSL certificate(Cloudflare)
   ```sh
   export CF_Email="my@example.com"
   export CF_Key="xxxxxxxxxxxxxxxx"
   curl https://get.acme.sh | sh -s email=my@example.com
   ~/.acme.sh/acme.sh --issue --dns dns_cf -d mydomain.me
   ln -s ~/.acme.sh/mydomain.me_ecc /etc/ssl/mydomain.me
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage

1. Create shadowsocks-libev configuration file
   ```sh
   mkdir /etc/shadowsocks
   cp config.json /etc/shadowsocks/
   ```

2. Run the container creation script
   ```sh
   chmod +x setup.sh && ./setup.sh 
   ```
   Or:
   ```sh
   sh setup.sh
   ```

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

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Donald Lee - [@DonaldTuringLee](https://twitter.com/DonaldTuringLee)

Project Link: [https://github.com/donaldturinglee/shadowsocks_install_script](https://github.com/donaldturinglee/shadowsocks_install_script)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
