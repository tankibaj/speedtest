# Speedtest



## Name

  **speedtest** - Speedtest CLI by Ookla is the official command line client for testing the speed and performance of your internet connection.



## Download & Run



### Method 1:

```bash
wget https://raw.githubusercontent.com/tankibaj/speedtest/master/speedtest.sh && \
sudo bash speedtest.sh && \
speedtest
```



### Method 2:

```bash
wget https://raw.githubusercontent.com/tankibaj/speedtest/master/speedtest && \
sudo mv speedtest /usr/local/bin/speedtest && \
speedtest
```



#### Now run serverinfo command from anywhere using any user account simply as:

```bash
speedtest
```



## Version

  1.0.0



## Synopsis

```
    speedtest [-aAbBfhiIpPsv] [--ca-certificate=path] [--format=[=format-type]] [--help] [--interface=interface]
    [--ip=ip_address] [--output-header] [--precision=num_decimal_places] [--progress=yes|no]
    [--selection-details] [--server-id=id] [--servers] [--unit=[=unit-of-measure]] [--version]
```



## Description

**speedtest** is an application that measures the latency, jitter, packet loss, download bandwidth, and
upload bandwidth of the network connection between the client and a nearby Speedtest
Server.



## Options

* **-h, --help**  
  Print usage information

* **-v**
  Logging verbosity, specify multiple times for higher verbosity (e.g. **-vvv**)

* **-V, --version**
  Print version number

* **-L, --servers**
  List nearest servers

* **--selection-details**
  Show server selection details

* **-s** *id*, **--server-id**=*id*  
  Specify a server from the server list using its id
  
* **-o** *hostname*, **--host**=*hostname*  
  Specify a server from the server list using its hostname

* **-f** *format_type* **--format**=*format_type*  
  Output format (default = human-readable)
  Note: Machine readable formats (csv, tsv, json, jsonl, json-pretty) use bytes
    as the unit of measure with max precision.

  *format_type* values are as follows:
    * **human-readable**       human readable output
    * **csv**                  comma separated values
    * **tsv**                  tab separated values
    * **json**                 javascript object notation (compact)
    * **jsonl**                javascript object notation (lines)
    * **json-pretty**          javascript object notation (pretty)

* **--output-header**
  Show output header for CSV and TSV formats

* **-u*** unit_of_measure***,&nbsp;--unit*** unit_of_measure*
  Output unit for displaying speeds (Note: this is only applicable
  for ‘human-readable’ output format and the default unit is Mbps)

    * **bps**                  bits per second (decimal prefix)
    * **kbps**                 kilobits per second (decimal prefix)
    * **Mbps**                 megabits per second (decimal prefix)
    * **Gbps**                 gigabits per second (decimal prefix)
    * **kibps**                kilobits per second (binary prefix)
    * **Mibps**                megabits per second (binary prefix)
    * **Gibps**                gigabits per second (binary prefix)
    * **B/s**                  bytes per second
    * **kB/s**                 kilobytes per second
    * **MB/s**                 megabytes per second
    * **GiB/s**                gigabytes per second
    * **auto-binary-bytes**    automatic in binary bytes
    * **auto-decimal-bytes**   automatic in decimal bytes
    * **auto-binary-bytes**    automatic in binary bits
    * **auto-binary-bytes**    automatic in decimal bits

* **-a**  
  Shortcut for [**-u auto-decimal-bits**]
  
* **-A**  
  Shortcut for [**-u auto-decimal-bytes**]
  
* **-b**  
  Shortcut for [**-u auto-binary-bits**]
  
* **-B**  
  Shortcut for [**-u auto-binary-bytes**]

* **-P** *decimal_places* **--precision**=*decimal_places*  
  Number of decimal_places to use (default = 2, valid = 0-8)

* **-p** *yes*|*no* **--progress**=*yes*|*no*  
  Enable or disable progress bar (default = yes when interactive)

* **-I** *interface* **--interface**=*interface*
  Attempt to bind to the specified interface when connecting to servers

* **-i** *ip_address* **--ip**=*ip_address*
  Attempt to bind to the specified IP address when connecting to servers

* **--ca-certificate**=*path*
  Path to CA Certificate bundle, see note below.



## Terms of Use and Privacy Policy Notices

You may only use this Speedtest software and information generated from it for personal, non-commercial use,
through a command line interface on a personal computer.  Your use of this software is subject to the End User
License Agreement, Terms of Use and Privacy Policy at these URLs:

* [https://www.speedtest.net/about/eula](https://www.speedtest.net/about/eula)
* [https://www.speedtest.net/about/terms](https://www.speedtest.net/about/terms)
* [https://www.speedtest.net/about/privacy](https://www.speedtest.net/about/privacy)



## Output

Upon successful execution, the application will exit with an exit code of 0. The result will include
latency, jitter, download, upload, packet loss (where available), and a result URL.

Latency and jitter will be represented in milliseconds. Download and upload units will depend on the output
format as well as if a unit was specified. The human-readable format defaults to Mbps and any machine-readable
formats (csv, tsv, json, jsonl, json-pretty) use bytes as the unit of measure with max precision. Packet loss is represented as a percentage, or **Not available** when packet loss is unavailable in the executing network environment.

The Result URL is available to share your result, appending **.png** to the Result URL will create a
shareable result image.

*Example human-readable result:*

```
$ speedtest
    Speedtest by Ookla

     Server: Speedtest.net - New York, NY (id = 10390)
        ISP: Comcast Cable
    Latency:    57.81 ms   (3.65 ms jitter)
   Download:    76.82 Mbps (data used: 80.9 MB)
     Upload:    37.58 Mbps (data used: 65.3 MB)
Packet Loss:     0.0%
 Result URL: https://www.speedtest.net/result/c/8ae1200c-e639-45e5-8b55-41421a079250
```



## Network Timeout Values

By default, network requests set a timeout of **10** seconds. The only exception to this
is latency testing, which sets a timeout of **15** seconds.



## Fatal Errors

Upon fatal errors, the application will exit with a non-zero exit code.

**Initialization Fatal Error Examples:**

*Configuration - Couldn't connect to server (Network is unreachable)*

*Configuration - Could not retrieve or read configuration (ConfigurationError)*

**Stage Execution Fatal Error Example:**

*[error] Error: [1] Latency test failed for HTTP*

*[error] Error: [36] Cannot open socket: Operation now in progress*

*[error] Failed to resolve host name. Cancelling test suite.*

*[error] Host resolve failed: Exec format error*

*[error] Cannot open socket: No route to host*

*[error] Server Selection - Failed to find a working test server. (NoServers)*



## SSL Certificate Locations

By default the following paths are checked for CA certificate bundles on linux machines:

    /etc/ssl/certs/ca-certificates.crt
    /etc/pki/tls/certs/ca-bundle.crt
    /usr/share/ssl/certs/ca-bundle.crt
    /usr/local/share/certs/ca-root-nss.crt
    /etc/ssl/cert.pem

If the device under test does *not* have one of the above mentioned files, then the canonical and up to date CA certificate bundle provided by the curl project can be manually
downloaded into a specific location.  This specific location can be provided as a parameter per the following example:

    wget https://curl.haxx.se/ca/cacert.pem
    ./ookla --ca-certificate=./cacert.pem



## Release Notes

### 1.0.0 - 10/29/2019
* Initial release
