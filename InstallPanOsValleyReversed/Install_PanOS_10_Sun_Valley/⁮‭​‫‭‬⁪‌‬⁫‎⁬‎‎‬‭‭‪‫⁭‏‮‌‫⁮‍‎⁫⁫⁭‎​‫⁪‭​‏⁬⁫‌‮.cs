// Decompiled with JetBrains decompiler
// Type: ⁮‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮
// Assembly: auth, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 5B7316B7-8A1B-4393-9210-7771B8F7EB15
// Assembly location: F:\Install_PanOS_10_Sun_Valley.exe

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;
using System.Threading;
using System.Windows.Forms;

internal class \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮
{
  private System.Threading.Timer \u206B⁭‬‎⁫⁯‌⁬⁭‮‮⁮‬⁯⁯⁭⁭‭⁪‎⁬‌⁪⁭⁪‍⁬⁮‍⁫‬⁭‏⁭‭‎⁯‭‫⁭‮;
  private string \u200F⁬⁯‍‫‎⁮‏‭‮⁫‏⁭‫⁮⁪‎⁮‪‭‬‮‭⁯​⁭‬‭‬⁫‏‪‎‭‌‍⁪‭‪‎‮;

  public \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮() => this.\u200F⁬⁯‍‫‎⁮‏‭‮⁫‏⁭‫⁮⁪‎⁮‪‭‬‮‭⁯​⁭‬‭‬⁫‏‪‎‭‌‍⁪‭‪‎‮ = this.\u206C⁮‎‪‪⁬⁮‏‪⁯‬‫⁮‪⁯⁭‬‭‍⁭‏‬‍⁬‫⁮​‏‌⁮‫⁬‭⁯‫⁪​⁪‭⁯‮();

  public void \u206F​⁫⁫⁬⁬‮⁮‬‪⁯⁮‌‍⁬‫‭⁫‏‭⁭‫‌⁮⁮‏⁫⁯⁫⁯⁮‫‪‮‏‍‏‪‮‮() => this.\u206B⁭‬‎⁫⁯‌⁬⁭‮‮⁮‬⁯⁯⁭⁭‭⁪‎⁬‌⁪⁭⁪‍⁬⁮‍⁫‬⁭‏⁭‭‎⁯‭‫⁭‮ = \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u200B‍⁪⁬⁬‭⁬‏⁮​‏‏‭⁪‏‪⁮​‎⁫⁮‬‏‬‮⁮⁭⁬⁪‭‏⁮‍⁬‌‌‬‬‫‮((TimerCallback) (_param1 => this.\u200E⁭‪‌⁬‎‏⁬‫⁬‫⁪​⁫‏‬‭⁬⁭‌⁯‍‪‎‫‮‏‍‭‏​‎⁮‮⁭‍⁯‏⁪‌‮()), (object) null, 5000, -1);

  private void \u200E⁭‪‌⁬‎‏⁬‫⁬‫⁪​⁫‏‬‭⁬⁭‌⁯‍‪‎‫‮‏‍‭‏​‎⁮‮⁭‍⁯‏⁪‌‮()
  {
    \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u202C‫‭‌⁫‎⁯‏‪⁯⁫‌‫⁮‬‪‪⁭‎‏‮‪‍‏‬‪‌‎‏‮‫⁯⁭‏‍⁯‪‏‏‮(this.\u206B⁭‬‎⁫⁯‌⁬⁭‮‮⁮‬⁯⁯⁭⁭‭⁪‎⁬‌⁪⁭⁪‍⁬⁮‍⁫‬⁭‏⁭‭‎⁯‭‫⁭‮);
    if (!\u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u202A‏⁬⁬⁪​‮‫‍⁪‌‏⁬‏⁯‬⁯‌‮⁭‫​‫‭‪⁪‫⁮‌⁫‭‌⁯⁪‮‬‭​‮‬‮(this.\u206C⁮‎‪‪⁬⁮‏‪⁯‬‫⁮‪⁯⁭‬‭‍⁭‏‬‍⁬‫⁮​‏‌⁮‫⁬‭⁯‫⁪​⁪‭⁯‮(), this.\u200F⁬⁯‍‫‎⁮‏‭‮⁫‏⁭‫⁮⁪‎⁮‪‭‬‮‭⁯​⁭‬‭‬⁫‏‪‎‭‌‍⁪‭‪‎‮))
    {
label_1:
      int num1 = -845484175;
      while (true)
      {
        uint num2;
        switch ((num2 = (uint) (num1 ^ -307031906)) % 5U)
        {
          case 0:
            goto label_1;
          case 1:
            goto label_3;
          case 2:
            \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200D‎⁬‪‎⁪‪​‪⁪‌‏‭⁭‮‎‏‏‍⁯‫​⁭‍‏‏‬⁭‎⁬‮‍‬‮‌‎‪‪‮ = true;
            num1 = (int) num2 * -614322508 ^ 1026113500;
            continue;
          case 3:
            int num3 = (int) \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206D⁪‍‫⁫⁬‌‏⁮⁯⁯‫⁫⁯‫⁫‌‬⁬⁫‭‏‪⁭‫⁬‭⁬‭​‌‍‍‌⁪‭⁫⁯⁮‏‮(\u003CModule\u003E.\u202A‏⁫⁫‮⁯‏⁬‬‍‎⁮‎‎‫‪‍‏​‏‫​⁫​‍⁮‭⁭⁯‎‮‌‫‮‮‌‮⁭⁭⁯‮<string>(4212414621U), \u206C‭‫​⁪‭⁭⁫‪‪‮‎‬‬‏‏​‍‏‎⁮‬‬‍⁪⁮⁬⁪‏⁮‌⁬⁬‬⁬‭‪⁬‍⁭‮.\u202C‭‍⁫⁯⁬⁯‮⁫‮‌‎‭⁭⁪‏‭⁮‪‍‭‫‪⁮⁬‎‍⁪⁯⁪‬⁯‮‭‬⁪‎⁪⁫‮‮);
            \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206B‎‪‌‬‬‭⁬‌‬⁬‏‎‍‮⁯‎‎⁭‮‫‏‮‮‍‭⁬‫⁪⁪‪⁪‍‌‪⁬‏‪⁪⁯‮(\u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206E‫⁯‏‎⁫‏⁬⁬‭‭⁯‬⁯‫‮​‎‎‪‍‎‬⁪‎⁪‏‫‌‌‬⁭⁫‪‮‍‫​‎⁬‮());
            num1 = (int) num2 * 1460060060 ^ -1497226676;
            continue;
          default:
            goto label_6;
        }
      }
label_3:
      return;
    }
label_6:
    this.\u200F⁬⁯‍‫‎⁮‏‭‮⁫‏⁭‫⁮⁪‎⁮‪‭‬‮‭⁯​⁭‬‭‬⁫‏‪‎‭‌‍⁪‭‪‎‮ = this.\u206C⁮‎‪‪⁬⁮‏‪⁯‬‫⁮‪⁯⁭‬‭‍⁭‏‬‍⁬‫⁮​‏‌⁮‫⁬‭⁯‫⁪​⁪‭⁯‮();
  }

  public static IPAddress \u200E‌‎‏⁭‪⁮⁬‎‍⁬‍‎‪⁭‎‭⁫​‎⁯‮‫‌‍​⁭‌⁫⁮‪‍⁭‍‪‪‫‏‌‏‮() => ((IEnumerable<NetworkInterface>) \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u202E⁭‭‭⁭‍‮‬⁫‬⁫​‬‮‏‍⁫⁯‪‪​⁫⁯⁬⁫​⁬‮‪‬​⁫​⁬⁫⁮‮‫​⁪‮()).Where<NetworkInterface>((Func<NetworkInterface, bool>) (_param1 => \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206F‪⁯‏⁭​‬‬⁭‭⁮⁭⁫‬⁫‌‏⁪‮⁬⁮⁫⁫‪‫⁭‫‫⁭⁮⁭‪⁪‎‪⁪‪‪‌‌‮.\u202C‪⁯‫‮‍‫‮‫‬‭⁮‬‏‬‫‮‬⁪‌‎‬⁬‮⁪‌⁫‎​‎‌‬‍‫‬⁬⁫‪⁪‌‮(_param1) == OperationalStatus.Up)).Where<NetworkInterface>((Func<NetworkInterface, bool>) (_param1 => \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206F‪⁯‏⁭​‬‬⁭‭⁮⁭⁫‬⁫‌‏⁪‮⁬⁮⁫⁫‪‫⁭‫‫⁭⁮⁭‪⁪‎‪⁪‪‪‌‌‮.\u202E‪⁪‮‬⁬⁭‮‎‮‍‭‏⁮‏‏⁫⁬​⁭‮‮‭​⁭‎‭⁮‌​‪⁯⁫‌‪‍‮‪⁫⁮‮(_param1) != NetworkInterfaceType.Loopback)).SelectMany<NetworkInterface, GatewayIPAddressInformation>((Func<NetworkInterface, IEnumerable<GatewayIPAddressInformation>>) (_param1 =>
  {
    // ISSUE: reference to a compiler-generated method
    IPInterfaceProperties interfaceProperties = \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206F‪⁯‏⁭​‬‬⁭‭⁮⁭⁫‬⁫‌‏⁪‮⁬⁮⁫⁫‪‫⁭‫‫⁭⁮⁭‪⁪‎‪⁪‪‪‌‌‮.\u206D‍​‪‭⁯‬​​‌⁭⁯‫⁬‪⁮⁫⁯‌‭‎⁮⁬⁬⁭​⁭‪⁭‌‪⁭‏⁯‭⁯⁪⁬‍⁫‮(_param1);
    // ISSUE: reference to a compiler-generated method
    return interfaceProperties == null ? (IEnumerable<GatewayIPAddressInformation>) null : (IEnumerable<GatewayIPAddressInformation>) \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206F‪⁯‏⁭​‬‬⁭‭⁮⁭⁫‬⁫‌‏⁪‮⁬⁮⁫⁫‪‫⁭‫‫⁭⁮⁭‪⁪‎‪⁪‪‪‌‌‮.\u206F‬‍⁮‎‪‮⁮⁬‫⁮⁮‬‪‬​‭‬​⁯‎⁬​​‮⁯⁬‌⁬‌‭‪‏‎‬‏‬⁬‭⁪‮(interfaceProperties);
  })).Select<GatewayIPAddressInformation, IPAddress>((Func<GatewayIPAddressInformation, IPAddress>) (_param1 =>
  {
    if (_param1 == null)
    {
label_1:
      uint num;
      switch ((num = (uint) (-2045348034 ^ -1103280188)) % 3U)
      {
        case 0:
          goto label_1;
        case 1:
          return (IPAddress) null;
      }
    }
    // ISSUE: reference to a compiler-generated method
    return \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206F‪⁯‏⁭​‬‬⁭‭⁮⁭⁫‬⁫‌‏⁪‮⁬⁮⁫⁫‪‫⁭‫‫⁭⁮⁭‪⁪‎‪⁪‪‪‌‌‮.\u200D‌‍‬‫‏‮⁯⁬‎‫‍‎‪⁬⁮‬⁪‮⁪‏⁫⁭‏‪​‬‮‏‎⁯⁬‏⁬‭‎‮⁫‪⁯‮(_param1);
  })).Where<IPAddress>((Func<IPAddress, bool>) (_param1 => _param1 != null)).FirstOrDefault<IPAddress>();

  private string \u202E‮⁮‫‌‍​‮​⁫⁭⁫‎⁭‏‭‪‫⁬‌‌⁬⁮‪⁬‪‬⁪‏‮‬⁪⁭‌‬‪⁮‫⁫‏‮()
  {
    string str = \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u202C‍‍⁮⁬‎‌‪‌⁫‏‍⁪‏⁬‭⁭‬⁫⁯⁪‪⁫‭​⁮‪⁪‮⁫‫​‫‫‫⁫‌⁪‏‍‮(\u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206D‮‮⁬⁫‍‍‫⁭⁫‎‍‪‮⁮‭⁯⁬⁯⁮‭‫‫‫⁫⁭‎‏⁬‏‬⁮⁯⁯‮‫‌⁪⁯‭‮());
    ProcessStartInfo processStartInfo = \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206A⁭⁪‏⁯​⁬‏‎‌⁫⁮‎‎⁫‫‭⁯‌‮‌‫‪⁭‫‮​‮‏‍‌⁯⁬‮‫⁯⁯⁭‎‍‮();
    \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206D⁬‪‎⁯‌⁬‌‏⁮‬‌‫⁫⁫‬‭​⁮‭‌‌‍⁫‌‌‍‪‌⁫‭​‍⁮‫⁪‎‎⁭⁪‮(processStartInfo, \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206E⁭​​‮‍⁭‍​‬‌⁫‭‌⁮​‏⁫‏‏⁫⁮‌‪‮​‏‪‪⁭⁮⁬⁫⁬‮‏⁮⁪⁫‌‮(str, \u003CModule\u003E.\u200E⁫‭‏⁭‍⁪⁬⁬⁫⁭⁬⁫‮‌‪⁮‬⁮‎⁮⁮⁮‏⁪⁬‫⁪​‌‫‬⁭‍‮‌⁮‪‭⁪‮<string>(744391994U)));
    \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206B‌‪​‎‬⁪⁯‌‫⁬⁮‮⁫⁭⁮‫‏‎⁭⁯​‮⁪‬‌‎⁯⁯⁯‎‮⁭⁭‏‎⁪‪⁮⁯‮(processStartInfo, \u003CModule\u003E.\u200E⁫‭‏⁭‍⁪⁬⁬⁫⁭⁬⁫‮‌‪⁮‬⁮‎⁮⁮⁮‏⁪⁬‫⁪​‌‫‬⁭‍‮‌⁮‪‭⁪‮<string>(748072165U));
    \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u200F‭⁭‌‪​‪‮‬‪‏⁯‭⁫⁬​​⁪​⁮⁬‫‬‭⁬⁪‭⁭⁭⁭‌‎‎⁪‭‭‪​⁬‬‮(processStartInfo, false);
    \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206B‫‭‪‬‮‎‎‬⁬⁪⁮⁮⁯⁭‬⁯⁭‪‭‭‬‬‏‍‭⁫⁬⁭‭‌⁭‮‏‎‍‭‍‎‪‮(processStartInfo, true);
    \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206E‏⁮‫‭‮⁫‬⁪‎‎‍⁫⁯‮⁬‎‎⁮⁬⁯‍‬‮⁭⁮⁪‬‌‫⁮‎​‌‎‎⁪‫‎‭‮(processStartInfo, true);
    Process process = \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u200B⁭⁯‍⁭‬⁪⁫‬‎‪‌‪‌‪⁭‍‫​‪⁬⁮‪⁫⁫‪‏⁬⁬⁯‭‫‬‌⁮‪‍‭‎⁬‮(processStartInfo);
    try
    {
      StreamReader streamReader = \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u200C​⁮⁪‬‍‎​⁬‭⁯⁯⁮‌⁪‌​​⁯‎‪⁫‎‍‏⁮‬‍‮⁭‫⁮⁫⁫‎⁫‮‭‬‪‮(process);
      try
      {
        return \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u202E‪‌‏⁭‫‍​⁮‬‪​‏⁮‮‮‌‬‮‫‮⁭‫⁭‌‬‎‎‫‫​‫‭‎‫‫‬⁪⁪⁯‮((TextReader) streamReader);
      }
      finally
      {
        if (streamReader != null)
        {
label_4:
          int num1 = -211061149;
          while (true)
          {
            uint num2;
            switch ((num2 = (uint) (num1 ^ -95203962)) % 3U)
            {
              case 0:
                goto label_4;
              case 2:
                \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u200E​⁭⁯‫‬‎‭⁪​⁬⁮⁫‍⁮‪⁪​⁬⁫‍‍‪‌‏⁯‎‍‭⁮⁮‪​⁭‭⁬‫‮‪⁬‮((IDisposable) streamReader);
                num1 = (int) num2 * 2134662524 ^ 1725184436;
                continue;
              default:
                goto label_7;
            }
          }
        }
label_7:;
      }
    }
    finally
    {
      if (process != null)
      {
label_9:
        int num3 = -253318165;
        while (true)
        {
          uint num4;
          switch ((num4 = (uint) (num3 ^ -95203962)) % 3U)
          {
            case 0:
              goto label_9;
            case 2:
              \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u200E​⁭⁯‫‬‎‭⁪​⁬⁮⁫‍⁮‪⁪​⁬⁫‍‍‪‌‏⁯‎‍‭⁮⁮‪​⁭‭⁬‫‮‪⁬‮((IDisposable) process);
              num3 = (int) num4 * -2074861286 ^ -1806072972;
              continue;
            default:
              goto label_12;
          }
        }
      }
label_12:;
    }
  }

  private string \u206C⁮‎‪‪⁬⁮‏‪⁯‬‫⁮‪⁯⁭‬‭‍⁭‏‬‍⁬‫⁮​‏‌⁮‫⁬‭⁯‫⁪​⁪‭⁯‮()
  {
    string str = \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206A⁮‬‏⁯⁫⁮‏‫‌⁮⁬‮⁮⁪‪‌⁯‫‎⁫‎‍‫‭‭‍⁫‌‪⁪​‏⁫‏⁪‎⁬⁪‪‮((object) \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u200E‌‎‏⁭‪⁮⁬‎‍⁬‍‎‪⁭‎‭⁫​‎⁯‮‫‌‍​⁭‌⁫⁮‪‍⁭‍‪‪‫‏‌‏‮());
    return \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206A⁮‬‏⁯⁫⁮‏‫‌⁮⁬‮⁮⁪‪‌⁯‫‎⁫‎‍‫‭‭‍⁫‌‪⁪​‏⁫‏⁪‎⁬⁪‪‮((object) \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206D‫‪‍⁮⁪‍‫​⁮​‪⁭‎⁯⁬⁬⁫‌‭‎⁮⁪⁫⁬‎‫‌⁬‮⁪‍‮​⁫‌‮⁫‫⁪‮(\u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u206B‍⁪‏‏⁯​‭⁮‎‌‮‫⁮‮⁫‌​⁮‮‌‮‭‎‮‮‌⁮‬⁯‏‮‮‏‌‮‪‎⁪‭‮(\u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u202B‪⁭‎‏‪⁫‫⁮⁮‮‎‎⁬‎‌​‮⁮⁬⁯⁯‫‬⁮⁫​⁪‮‎⁮‭‎⁪⁫‍‪‭‭⁮‮(\u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u202E‎⁯⁫‏‏⁭‮‪⁮⁯‎‏⁪⁮‫‮‪‮‏‍‭‮⁬​‍⁫‬‪‫⁬‌‭‫⁫⁭‏⁬‭⁬‮(\u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮.\u200F⁯⁮​⁮⁭⁬⁭‬⁭⁫‬‌‫⁭‌⁪‏‬​⁯⁯⁫‪‌‎‬‍‫⁯⁯‌⁪⁮‬‬‬‭⁭⁪‮(\u003CModule\u003E.\u202A‏⁫⁫‮⁯‏⁬‬‍‎⁮‎‎‫‪‍‏​‏‫​⁫​‍⁮‭⁭⁯‎‮‌‫‮‮‌‮⁭⁭⁯‮<string>(3815617081U), (object) str)), this.\u202E‮⁮‫‌‍​‮​⁫⁭⁫‎⁭‏‭‪‫⁬‌‌⁬⁮‪⁬‪‬⁪‏‮‬⁪⁭‌‬‪⁮‫⁫‏‮())), 2));
  }

  static System.Threading.Timer \u200B‍⁪⁬⁬‭⁬‏⁮​‏‏‭⁪‏‪⁮​‎⁫⁮‬‏‬‮⁮⁭⁬⁪‭‏⁮‍⁬‌‌‬‬‫‮(
    [In] TimerCallback obj0,
    [In] object obj1,
    [In] int obj2,
    [In] int obj3)
  {
    return new System.Threading.Timer(obj0, obj1, obj2, obj3);
  }

  static void \u202C‫‭‌⁫‎⁯‏‪⁯⁫‌‫⁮‬‪‪⁭‎‏‮‪‍‏‬‪‌‎‏‮‫⁯⁭‏‍⁯‪‏‏‮([In] System.Threading.Timer obj0) => obj0.Dispose();

  static bool \u202A‏⁬⁬⁪​‮‫‍⁪‌‏⁬‏⁯‬⁯‌‮⁭‫​‫‭‪⁪‫⁮‌⁫‭‌⁯⁪‮‬‭​‮‬‮([In] string obj0, [In] string obj1) => obj0 == obj1;

  static DialogResult \u206D⁪‍‫⁫⁬‌‏⁮⁯⁯‫⁫⁯‫⁫‌‬⁬⁫‭‏‪⁭‫⁬‭⁬‭​‌‍‍‌⁪‭⁫⁯⁮‏‮([In] string obj0, [In] string obj1) => MessageBox.Show(obj0, obj1);

  static Process \u206E‫⁯‏‎⁫‏⁬⁬‭‭⁯‬⁯‫‮​‎‎‪‍‎‬⁪‎⁪‏‫‌‌‬⁭⁫‪‮‍‫​‎⁬‮() => Process.GetCurrentProcess();

  static void \u206B‎‪‌‬‬‭⁬‌‬⁬‏‎‍‮⁯‎‎⁭‮‫‏‮‮‍‭⁬‫⁪⁪‪⁪‍‌‪⁬‏‪⁪⁯‮([In] Process obj0) => obj0.Kill();

  static NetworkInterface[] \u202E⁭‭‭⁭‍‮‬⁫‬⁫​‬‮‏‍⁫⁯‪‪​⁫⁯⁬⁫​⁬‮‪‬​⁫​⁬⁫⁮‮‫​⁪‮() => NetworkInterface.GetAllNetworkInterfaces();

  static string \u206D‮‮⁬⁫‍‍‫⁭⁫‎‍‪‮⁮‭⁯⁬⁯⁮‭‫‫‫⁫⁭‎‏⁬‏‬⁮⁯⁯‮‫‌⁪⁯‭‮() => Environment.SystemDirectory;

  static string \u202C‍‍⁮⁬‎‌‪‌⁫‏‍⁪‏⁬‭⁭‬⁫⁯⁪‪⁫‭​⁮‪⁪‮⁫‫​‫‫‫⁫‌⁪‏‍‮([In] string obj0) => Path.GetPathRoot(obj0);

  static ProcessStartInfo \u206A⁭⁪‏⁯​⁬‏‎‌⁫⁮‎‎⁫‫‭⁯‌‮‌‫‪⁭‫‮​‮‏‍‌⁯⁬‮‫⁯⁯⁭‎‍‮() => new ProcessStartInfo();

  static string \u206E⁭​​‮‍⁭‍​‬‌⁫‭‌⁮​‏⁫‏‏⁫⁮‌‪‮​‏‪‪⁭⁮⁬⁫⁬‮‏⁮⁪⁫‌‮([In] string obj0, [In] string obj1) => obj0 + obj1;

  static void \u206D⁬‪‎⁯‌⁬‌‏⁮‬‌‫⁫⁫‬‭​⁮‭‌‌‍⁫‌‌‍‪‌⁫‭​‍⁮‫⁪‎‎⁭⁪‮([In] ProcessStartInfo obj0, [In] string obj1) => obj0.FileName = obj1;

  static void \u206B‌‪​‎‬⁪⁯‌‫⁬⁮‮⁫⁭⁮‫‏‎⁭⁯​‮⁪‬‌‎⁯⁯⁯‎‮⁭⁭‏‎⁪‪⁮⁯‮([In] ProcessStartInfo obj0, [In] string obj1) => obj0.Arguments = obj1;

  static void \u200F‭⁭‌‪​‪‮‬‪‏⁯‭⁫⁬​​⁪​⁮⁬‫‬‭⁬⁪‭⁭⁭⁭‌‎‎⁪‭‭‪​⁬‬‮([In] ProcessStartInfo obj0, [In] bool obj1) => obj0.UseShellExecute = obj1;

  static void \u206B‫‭‪‬‮‎‎‬⁬⁪⁮⁮⁯⁭‬⁯⁭‪‭‭‬‬‏‍‭⁫⁬⁭‭‌⁭‮‏‎‍‭‍‎‪‮([In] ProcessStartInfo obj0, [In] bool obj1) => obj0.RedirectStandardOutput = obj1;

  static void \u206E‏⁮‫‭‮⁫‬⁪‎‎‍⁫⁯‮⁬‎‎⁮⁬⁯‍‬‮⁭⁮⁪‬‌‫⁮‎​‌‎‎⁪‫‎‭‮([In] ProcessStartInfo obj0, [In] bool obj1) => obj0.CreateNoWindow = obj1;

  static Process \u200B⁭⁯‍⁭‬⁪⁫‬‎‪‌‪‌‪⁭‍‫​‪⁬⁮‪⁫⁫‪‏⁬⁬⁯‭‫‬‌⁮‪‍‭‎⁬‮([In] ProcessStartInfo obj0) => Process.Start(obj0);

  static StreamReader \u200C​⁮⁪‬‍‎​⁬‭⁯⁯⁮‌⁪‌​​⁯‎‪⁫‎‍‏⁮‬‍‮⁭‫⁮⁫⁫‎⁫‮‭‬‪‮([In] Process obj0) => obj0.StandardOutput;

  static string \u202E‪‌‏⁭‫‍​⁮‬‪​‏⁮‮‮‌‬‮‫‮⁭‫⁭‌‬‎‎‫‫​‫‭‎‫‫‬⁪⁪⁯‮([In] TextReader obj0) => obj0.ReadToEnd();

  static void \u200E​⁭⁯‫‬‎‭⁪​⁬⁮⁫‍⁮‪⁪​⁬⁫‍‍‪‌‏⁯‎‍‭⁮⁮‪​⁭‭⁬‫‮‪⁬‮([In] IDisposable obj0) => obj0.Dispose();

  static string \u206A⁮‬‏⁯⁫⁮‏‫‌⁮⁬‮⁮⁪‪‌⁯‫‎⁫‎‍‫‭‭‍⁫‌‪⁪​‏⁫‏⁪‎⁬⁪‪‮([In] object obj0) => obj0.ToString();

  static string \u200F⁯⁮​⁮⁭⁬⁭‬⁭⁫‬‌‫⁭‌⁪‏‬​⁯⁯⁫‪‌‎‬‍‫⁯⁯‌⁪⁮‬‬‬‭⁭⁪‮([In] string obj0, [In] object obj1) => string.Format(obj0, obj1);

  static Regex \u202E‎⁯⁫‏‏⁭‮‪⁮⁯‎‏⁪⁮‫‮‪‮‏‍‭‮⁬​‍⁫‬‪‫⁬‌‭‫⁫⁭‏⁬‭⁬‮([In] string obj0) => new Regex(obj0);

  static Match \u202B‪⁭‎‏‪⁫‫⁮⁮‮‎‎⁬‎‌​‮⁮⁬⁯⁯‫‬⁮⁫​⁪‮‎⁮‭‎⁪⁫‍‪‭‭⁮‮([In] Regex obj0, [In] string obj1) => obj0.Match(obj1);

  static GroupCollection \u206B‍⁪‏‏⁯​‭⁮‎‌‮‫⁮‮⁫‌​⁮‮‌‮‭‎‮‮‌⁮‬⁯‏‮‮‏‌‮‪‎⁪‭‮([In] Match obj0) => obj0.Groups;

  static Group \u206D‫‪‍⁮⁪‍‫​⁮​‪⁭‎⁯⁬⁬⁫‌‭‎⁮⁪⁫⁬‎‫‌⁬‮⁪‍‮​⁫‌‮⁫‫⁪‮([In] GroupCollection obj0, [In] int obj1) => obj0[obj1];
}
