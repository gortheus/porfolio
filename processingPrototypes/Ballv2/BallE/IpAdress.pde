void ipNumber()
{
  try {
    InetAddress addr = InetAddress.getLocalHost();

    byte[] ipAddr = addr.getAddress();

    String raw_addr = addr.toString();
    String[] list = split(raw_addr, '/');
    HostAddress = list[1];

    HostName = addr.getHostName();
  }
  catch (UnknownHostException e) {
  }
}