// Decompiled with JetBrains decompiler
// Type: ​‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮
// Assembly: auth, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 5B7316B7-8A1B-4393-9210-7771B8F7EB15
// Assembly location: F:\Install_PanOS_10_Sun_Valley.exe

using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Security;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Windows.Forms;

internal class \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮
{
  private const string \u200E⁪⁪‎⁪⁯‫‪⁮‍⁬⁬‫‌⁪‍⁮‮⁪‍⁯‭⁮‭‪⁭‫‫⁪⁮‬‫⁬⁯‮⁭‪‍‪‫‮ = "045C03C7FB0E76A822AB197B6663C288D9632E55B39B80296CBCD978707A7E5B3EAE1DB5D487CE9F0E448C3557079CE142F5A41B7F1F6436077D8F3FF7C311888C";

  public static string \u206F‍⁭‫‫‎⁬‌‬‏‬‭⁭⁮⁯‮‫‬‍⁪⁭‬‏‮‬‪‫​‬‪‮⁭‫‬⁯⁬‬‮‫⁬‮(string _param0)
  {
    MD5 md5 = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202D‏‮‏‫‏‎⁭‌‬‎‍‭‪⁯‬‏⁫⁫‪‏⁪⁬⁬⁭⁮‫⁫⁪‭⁯‌‪⁪‎‮⁬‪‪‏‮();
    try
    {
      byte[] numArray = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202D⁮‪⁯‫‫‪‮⁬⁪⁪‬‭​‭‬‮‬‌‮⁯‏⁪‭‌⁫⁬‎‌‮‫⁯​‌‪​⁯‫‬‎‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200B‮⁪⁭‮⁫‍‬⁯‪‏‌‮⁫⁬‮⁯‪‭⁯‬‎‏‌⁭⁯⁭‬‎⁬‏⁮‌⁫‌‮⁪‭​‍‮(), _param0);
      return \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200F‮⁭‪​‭‬‎⁮⁭‍​​‮‌⁭⁭‪⁫⁯⁮‪‮⁬⁪‭⁮⁪⁪‬⁪⁭⁭​‍‍⁯⁫⁭⁫‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206B‍⁭⁬‏‬‫⁯‍‫⁪‮‫‏‌⁬‬‭⁮‫⁪⁯⁭‭‏‌‫​‮‌‎‪‌⁪⁫⁯‮‬‫⁯‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206B‏⁪‏⁯⁬‮‍‫​‮⁪‌‮‭‌⁭‪⁭‪⁬‭‌‍‎‌‮⁯‪‎‮⁭​⁪⁬‪‎‬‬‏‮((HashAlgorithm) md5, numArray)), \u003CModule\u003E.\u200C⁫⁫⁯⁪⁬⁬‮‏‮⁮‪‪⁬‬‎‫⁭‪⁪⁪‬‌‎⁪⁬⁬‭‮‏‌‪​⁯⁬‫⁭​‍‏‮<string>(1416629819U), nameof ());
    }
    finally
    {
      if (md5 != null)
      {
label_3:
        int num1 = 572461660;
        while (true)
        {
          uint num2;
          switch ((num2 = (uint) (num1 ^ 1301752049)) % 3U)
          {
            case 1:
              \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206D​‎⁮⁪‮⁮‎⁬‬‪‭⁪⁫⁯‫‏⁭​‎‍‭⁫‮⁬‮‏‫‍‪⁮⁮‏⁯‭⁮⁬⁯‫‏‮((IDisposable) md5);
              num1 = (int) num2 * -1583237940 ^ 1716454969;
              continue;
            case 2:
              goto label_3;
            default:
              goto label_6;
          }
        }
      }
label_6:;
    }
  }

  private static string \u206C⁮‪‌‏‍⁪⁪⁭‏⁮‏‌⁬⁬‬‏‫⁬‎‎​⁭​​‮‏‍‭⁯‫‮​⁭⁭‎⁪‭‪‌‮(int _param0)
  {
    // ISSUE: object of a compiler-generated type is created
    // ISSUE: variable of a compiler-generated type
    \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200D⁭​‬‭⁪⁮‌‫‬⁫‏⁭‫​⁯⁬⁬‬‮⁭‭⁬‫‎⁭⁪‪‪‪⁭‮⁫⁯‫‭​⁭‪‎‮ obj = new \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200D⁭​‬‭⁪⁮‌‫‬⁫‏⁭‫​⁯⁬⁬‬‮⁭‭⁬‫‎⁭⁪‪‪‪⁭‮⁫⁯‫‭​⁭‪‎‮();
label_1:
    int num1 = -715598622;
    while (true)
    {
      uint num2;
      switch ((num2 = (uint) (num1 ^ -121181641)) % 3U)
      {
        case 1:
          // ISSUE: reference to a compiler-generated field
          obj.\u202D​‫‎‬‍‭‬‬‮‏‍‎​⁬‮‫⁮⁫‭​⁪‏‪⁯⁫‭⁪⁯‏‪​‭‌‎⁯​‏⁭‏‮ = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202C‬‭⁭⁬‍⁮‌​‫‬‬​⁮⁪‍‌⁭⁫‮⁭⁮‬⁮⁯‏‭‍⁭⁪‍⁪⁭⁯‮‮‌‌‌⁭‮();
          num1 = (int) num2 * 426175150 ^ -1069758999;
          continue;
        case 2:
          goto label_1;
        default:
          goto label_4;
      }
    }
label_4:
    // ISSUE: reference to a compiler-generated method
    return \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202A​⁪‬‪‬⁪‎⁮‭‭​⁬‎⁭⁮⁮⁮‭‎⁪‍⁭⁮⁯‬⁭‌⁪⁮‌‬‫​‌‎‪‫⁫‌‮(Enumerable.Repeat<string>(\u003CModule\u003E.\u200C⁫⁫⁯⁪⁬⁬‮‏‮⁮‪‪⁬‬‎‫⁭‪⁪⁪‬‌‎⁪⁬⁬‭‮‏‌‪​⁯⁬‫⁭​‍‏‮<string>(3335933889U), _param0).Select<string, char>(new Func<string, char>(obj.\u206D⁫‬⁫‫⁯⁮​‍‫⁫⁪‍⁮‮⁭‪⁬⁫⁭‏⁬⁭‫⁯⁯‮⁭⁫‏‌⁭⁪​​‌⁭⁪‫‎‮)).ToArray<char>());
  }

  public static string \u200D‍‏‬⁯⁭⁬⁮‎‪‏‎⁮‏‫‎‭​‮‏⁯⁬‭⁭⁬⁪‮‍⁫⁭‎⁮‫⁪‍​‬‪‍⁯‮(int _param0) => \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202A​⁪‬‪‬⁪‎⁮‭‭​⁬‎⁭⁮⁮⁮‭‎⁪‍⁭⁮⁯‬⁭‌⁪⁮‌‬‫​‌‎‪‫⁫‌‮(Enumerable.Repeat<string>(\u003CModule\u003E.\u200F⁮⁯⁮‏‍‬‎‍⁬‪‬‭⁫‎‍‬⁮⁮⁭⁯⁮‮‪‫‏‎‌‌​‪‮⁮‪​‮‪⁫‎⁪‮<string>(2970060317U), _param0).Select<string, char>(new Func<string, char>(new \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202A‏​⁫⁫‬‫‌‬‎‌⁮‮‌⁬‮‏‎‏⁯‭‬⁬‬‭⁮⁯⁮‍⁫‌‌⁯‬‌‎‭‪​‍‮()
  {
    \u202D​‫‎‬‍‭‬‬‮‏‍‎​⁬‮‫⁮⁫‭​⁪‏‪⁯⁫‭⁪⁯‏‪​‭‌‎⁯​‏⁭‏‮ = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202C‬‭⁭⁬‍⁮‌​‫‬‬​⁮⁪‍‌⁭⁫‮⁭⁮‬⁮⁯‏‭‍⁭⁪‍⁪⁭⁯‮‮‌‌‌⁭‮()
  }.\u206D​⁯‎⁬‭‬⁪⁭‬​‏⁬‮‬⁭⁫‎‫⁭​⁭‪⁭⁭‬‫‌⁭​‪⁪‎‪⁫​⁬‍‌‫‮)).ToArray<char>());

  public static void \u200D‎‬⁯⁮⁪‭‏⁪⁭⁭‌‍⁫‎‫‏‬‌‭⁯‏‍‌⁬⁯⁫‫‍⁬⁪‫⁯‪‮‫‪‬‎‬‮()
  {
    string str = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202C⁮‮‬⁯​⁪‭‌⁪‍⁯⁪⁫‍‬⁭​‫‫⁬⁫⁯‮‬​⁯‭‫‫​‬⁭⁫‪⁯​‮‬⁯‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200B‌‫‌‭‏​‫⁪‍‌‍‭‍‎⁮‮‪⁮​​​‏‎⁫‪⁪⁬⁮‭‬‮⁬‬‬‎‍‫⁪⁯‮());
label_1:
    int num1 = 2112379531;
    while (true)
    {
      uint num2;
      switch ((num2 = (uint) (num1 ^ 226329649)) % 5U)
      {
        case 0:
          int num3 = (int) \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202E⁪⁪‌⁯‎⁮‍⁭‍‎​‭‏⁮⁫⁮‫‍⁪⁪‏‭​⁯⁯‌‬​‫‎‬‌‮‮‫⁪​⁭⁯‮(\u003CModule\u003E.\u200F‏‬‎‏⁭‏⁮‌⁬‪​‎‫‍⁮‭⁬⁪⁮⁭⁯‎‏‫⁫‮‏⁬⁫‌⁫​⁪​‍‭⁭⁮‭‮<string>(2439200553U), \u206C‭‫​⁪‭⁭⁫‪‪‮‎‬‬‏‏​‍‏‎⁮‬‬‍⁪⁮⁬⁪‏⁮‌⁬⁬‬⁬‭‪⁬‍⁭‮.\u202C‭‍⁫⁯⁬⁯‮⁫‮‌‎‭⁭⁪‏‭⁮‪‍‭‫‪⁮⁬‎‍⁪⁯⁪‬⁯‮‭‬⁪‎⁪⁫‮‮);
          num1 = (int) num2 * -2057667734 ^ -1328412229;
          continue;
        case 1:
          goto label_4;
        case 2:
          goto label_1;
        case 4:
          int num4 = !\u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200F⁫‭⁯‎‮‎‮‪⁯‫‭‮‪‭⁭​‮‬⁮⁭⁭⁬‮‏‍⁯‎‍⁯‍‪‍‌⁮​‪⁪‬‌‮ ? 461609121 : (num4 = 947112612);
          num1 = num4 ^ (int) num2 * -597559442;
          continue;
        default:
          goto label_6;
      }
    }
label_4:
    \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206D‬‪⁯‭‫‫⁪‍‏‬⁮‮‭‮⁭⁭⁬⁭​⁫⁫⁭⁬⁭⁮‮‏⁭‌‬‪​⁭‏⁪​‫‮⁭‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206C‏‭⁬⁭⁪‮‪‫⁫‬‍‎⁪⁮⁭​⁭⁫⁫‌‌⁭⁬‌⁮‪⁪⁯‎⁭​‬‌‌​‮‭⁯⁫‮());
    return;
label_6:
    StreamReader streamReader = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200D‬‬‬‬‮⁮⁯‪⁪‍⁫‫⁫‭⁮‌‪⁬⁫⁫‎⁪‏‎‬⁯‭⁪⁬‏‮‬‭‍​⁪⁮⁪‭‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200E​‪‏‌​‏⁯‪‎‏‫⁬‮‭‪⁮⁬‭‪⁬⁭⁯‭⁬⁮‍‎‏‍⁯‍‎‫‪⁮‮⁫‭‫‮(str, \u003CModule\u003E.\u200F⁮⁯⁮‏‍‬‎‍⁬‪‬‭⁫‎‍‬⁮⁮⁭⁯⁮‮‪‫‏‎‌‌​‪‮⁮‪​‮‪⁫‎⁪‮<string>(3780355692U)));
    try
    {
      if (\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206D⁬‫⁬⁪⁯⁯‎‬‍⁪⁯‫‬‌⁬‮⁪‪‫‏​⁯‭‬⁪⁬‭⁪‌‌‌⁯‫‮‪‍‏‎‬‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206C‌⁬⁫‍​‫‮⁫‏‪‏‪‍⁪⁬⁫‫⁮⁭​‌⁬⁬​‫‬​‏‫‫⁬⁯‍⁭‍⁭‫⁬‭‮((TextReader) streamReader), \u003CModule\u003E.\u202A‏⁫⁫‮⁯‏⁬‬‍‎⁮‎‎‫‪‍‏​‏‫​⁫​‍⁮‭⁭⁯‎‮‌‫‮‮‌‮⁭⁭⁯‮<string>(1345918469U)))
      {
label_8:
        int num5 = 2041866835;
        while (true)
        {
          uint num6;
          switch ((num6 = (uint) (num5 ^ 226329649)) % 3U)
          {
            case 0:
              goto label_8;
            case 2:
              \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200D‎⁬‪‎⁪‪​‪⁪‌‏‭⁭‮‎‏‏‍⁯‫​⁭‍‏‏‬⁭‎⁬‮‍‬‮‌‎‪‪‮ = true;
              int num7 = (int) \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200E⁭‭⁯‎‫‮​‭‬⁫‮⁮‮‎‫‎⁪​‪⁬‍​‏‫‎​‮‍‪⁮‬‏‎‭‬‌⁯‮‌‮(\u003CModule\u003E.\u200E⁫‭‏⁭‍⁪⁬⁬⁫⁭⁬⁫‮‌‪⁮‬⁮‎⁮⁮⁮‏⁪⁬‫⁪​‌‫‬⁭‍‮‌⁮‪‭⁪‮<string>(652387719U), \u003CModule\u003E.\u202A‏⁫⁫‮⁯‏⁬‬‍‎⁮‎‎‫‪‍‏​‏‫​⁫​‍⁮‭⁭⁯‎‮‌‫‮‮‌‮⁭⁭⁯‮<string>(129060704U), MessageBoxButtons.OK, MessageBoxIcon.Hand);
              \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206D‬‪⁯‭‫‫⁪‍‏‬⁮‮‭‮⁭⁭⁬⁭​⁫⁫⁭⁬⁭⁮‮‏⁭‌‬‪​⁭‏⁪​‫‮⁭‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206C‏‭⁬⁭⁪‮‪‫⁫‬‍‎⁪⁮⁭​⁭⁫⁫‌‌⁭⁬‌⁮‪⁪⁯‎⁭​‬‌‌​‮‭⁯⁫‮());
              num5 = (int) num6 * 921003846 ^ 962980095;
              continue;
            default:
              goto label_16;
          }
        }
      }
    }
    finally
    {
      if (streamReader != null)
      {
label_12:
        int num8 = 1598090790;
        while (true)
        {
          uint num9;
          switch ((num9 = (uint) (num8 ^ 226329649)) % 3U)
          {
            case 0:
              goto label_12;
            case 2:
              \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206D​‎⁮⁪‮⁮‎⁬‬‪‭⁪⁫⁯‫‏⁭​‎‍‭⁫‮⁬‮‏‫‍‪⁮⁮‏⁯‭⁮⁬⁯‫‏‮((IDisposable) streamReader);
              num8 = (int) num9 * 1289340274 ^ -2000441703;
              continue;
            default:
              goto label_15;
          }
        }
      }
label_15:;
    }
label_16:
    new \u206E‭​‫‭‬⁪‌‬⁫‎⁬‎‎‬‭‭‪‫⁭‏‮‌‫⁮‍‎⁫⁫⁭‎​‫⁪‭​‏⁬⁫‌‮().\u206F​⁫⁫⁬⁬‮⁮‬‪⁯⁮‌‍⁬‫‭⁫‏‭⁭‫‌⁮⁮‏⁫⁯⁫⁯⁮‫‪‮‏‍‏‪‮‮();
label_17:
    int num10 = 1563978092;
    Guid guid;
    while (true)
    {
      uint num11;
      switch ((num11 = (uint) (num10 ^ 226329649)) % 6U)
      {
        case 0:
          goto label_17;
        case 1:
          \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200E‏‫‬‭‌‮‭‌‍⁯‍‫‮‏‌‍‪⁯‏​⁬‭‫‎‌‫⁮⁮⁮‫‭‌‬‭‬‮‌‎‮‮ = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200E​‍‌‎‫⁫⁬⁮‎‌‪‮‎⁭⁬⁭‏‫‌⁮⁫‌‫⁪‍‌⁪‎⁭⁫⁯‬‏⁬⁬‏‫‫‌‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202D⁮‪⁯‫‫‪‮⁬⁪⁪‬‭​‭‬‮‬‌‮⁯‏⁪‭‌⁫⁬‎‌‮‫⁯​‌‪​⁯‫‬‎‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200E⁯‭⁬‮⁭‪⁪‭‍‮‮‎⁪⁫⁫⁪‪⁯‎‎⁫‍‪‍⁯‪‬‫‎‏‫‫‏‌‏⁬‫⁬⁭‮(), \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206C⁮‪‌‏‍⁪⁪⁭‏⁮‏‌⁬⁬‬‏‫⁬‎‎​⁭​​‮‏‍‭⁯‫‮​⁭⁭‎⁪‭‪‌‮(32)));
          \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u206C‍‪⁯​‮‭⁬‍‭‎⁪⁯⁬‏​‮‎‬⁮‫‪‪⁮⁫‍⁪⁮⁮‬‭‭‎‎⁫​‪‭‎⁫‮ = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200E​‍‌‎‫⁫⁬⁮‎‌‪‮‎⁭⁬⁭‏‫‌⁮⁫‌‫⁪‍‌⁪‎⁭⁫⁯‬‏⁬⁬‏‫‫‌‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202D⁮‪⁯‫‫‪‮⁬⁪⁪‬‭​‭‬‮‬‌‮⁯‏⁪‭‌⁫⁬‎‌‮‫⁯​‌‪​⁯‫‬‎‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200E⁯‭⁬‮⁭‪⁪‭‍‮‮‎⁪⁫⁫⁪‪⁯‎‎⁫‍‪‍⁯‪‬‫‎‏‫‫‏‌‏⁬‫⁬⁭‮(), \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206C⁮‪‌‏‍⁪⁪⁭‏⁮‏‌⁬⁬‬‏‫⁬‎‎​⁭​​‮‏‍‭⁯‫‮​⁭⁭‎⁪‭‪‌‮(16)));
          num10 = (int) num11 * 1721407434 ^ -1434806085;
          continue;
        case 2:
          \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u202E​‎‫⁬‬‫⁮⁭‎​‎‪⁯‪⁯‪⁯‪⁪⁮‫‮⁫⁯‫⁮⁭‎⁭‫⁯‪⁫‍‭‏​‭‏‮ = guid.ToString();
          \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202A‍⁪‪‎​‌‎⁯‮‎‬‍‍‌⁫⁭‭‌‎‭⁬‫⁬‫⁬‏⁯⁫⁬‎⁬⁪‫​‎‫‭‬‬‮((RemoteCertificateValidationCallback) \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206E‎⁭‪⁮⁬‎‬‬‪‫⁪‌‮‌⁯‮⁪⁯‬‭‎⁯‍‎⁮⁬⁭‏‮‫‬⁬⁯‮⁬⁪‍⁬⁭‮((Delegate) \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206A​‌⁫⁬‏‌‮‌‎⁫​‍‍‮‭‮​‮​‪‭‭⁯​⁭⁪‌⁯‏‪‮⁬⁪‌‌⁮⁬⁯⁯‮(), (Delegate) new RemoteCertificateValidationCallback(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202B‭‬‌‮⁫⁯‌‬​‬‌‎⁮⁫‏⁪​‌‮⁭⁬⁬‪​⁯​‮‍‎‭⁫⁯‭⁬⁮⁮‌⁬⁫‮)));
          num10 = (int) num11 * -969153 ^ 1316108124;
          continue;
        case 4:
          \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200E‎‌‍‬⁫‍‪‌​‪‬‮⁪​⁯‌‬⁬⁬‎‍‎⁮‍‏⁭⁫⁬‪⁫‏‎⁯⁮⁬‍‏⁬‬‮ = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200E​‍‌‎‫⁫⁬⁮‎‌‪‮‎⁭⁬⁭‏‫‌⁮⁫‌‫⁪‍‌⁪‎⁭⁫⁯‬‏⁬⁬‏‫‫‌‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202D⁮‪⁯‫‫‪‮⁬⁪⁪‬‭​‭‬‮‬‌‮⁯‏⁪‭‌⁫⁬‎‌‮‫⁯​‌‪​⁯‫‬‎‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200E⁯‭⁬‮⁭‪⁪‭‍‮‮‎⁪⁫⁫⁪‪⁯‎‎⁫‍‪‍⁯‪‬‫‎‏‫‫‏‌‏⁬‫⁬⁭‮(), \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u202B‫‮‫⁪​‭‍⁯⁭‬⁪‪‭‪⁪⁮​​‫​‪‭⁮⁯‮⁯‍‌‭‭‍‫⁭‬⁫⁮⁬‎‮‮(16)));
          num10 = (int) num11 * 677597766 ^ 542391124;
          continue;
        case 5:
          guid = Guid.NewGuid();
          num10 = (int) num11 * 331483212 ^ -520339103;
          continue;
        default:
          goto label_23;
      }
    }
label_23:
    \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200B‫‏⁪​​⁭⁮‪‬‬‫‍‮⁪‎⁭⁯‌⁭⁯‍‮⁯‮⁬⁪⁪​‎‭⁮‍‌⁪‪‍⁭‮‍‮ = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200E​‍‌‎‫⁫⁬⁮‎‌‪‮‎⁭⁬⁭‏‫‌⁮⁫‌‫⁪‍‌⁪‎⁭⁫⁯‬‏⁬⁬‏‫‫‌‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202D⁮‪⁯‫‫‪‮⁬⁪⁪‬‭​‭‬‮‬‌‮⁯‏⁪‭‌⁫⁬‎‌‮‫⁯​‌‪​⁯‫‬‎‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200E⁯‭⁬‮⁭‪⁪‭‍‮‮‎⁪⁫⁫⁪‪⁯‎‎⁫‍‪‍⁯‪‬‫‎‏‫‫‏‌‏⁬‫⁬⁭‮(), \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u202B‫‮‫⁪​‭‍⁯⁭‬⁪‪‭‪⁪⁮​​‫​‪‭⁮⁯‮⁯‍‌‭‭‍‫⁭‬⁫⁮⁬‎‮‮(32)));
    \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200F⁫‭⁯‎‮‎‮‪⁯‫‭‮‪‭⁭​‮‬⁮⁭⁭⁬‮‏‍⁯‎‍⁯‍‪‍‌⁮​‪⁪‬‌‮ = true;
  }

  public static void \u202B⁪​‪‏⁪⁮⁮​‏‮‮‌⁯‪​‎⁪‎‮⁭‍⁫‬​⁫⁮‬‫⁮⁮‮‌⁭⁪⁫⁯⁮‎‏‮()
  {
    if (\u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200F⁫‭⁯‎‮‎‮‪⁯‫‭‮‪‭⁭​‮‬⁮⁭⁭⁬‮‏‍⁯‎‍⁯‍‪‍‌⁮​‪⁪‬‌‮)
      goto label_7;
label_1:
    int num1 = -351697582;
label_2:
    while (true)
    {
      uint num2;
      switch ((num2 = (uint) (num1 ^ -1409087229)) % 9U)
      {
        case 0:
          \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202A‍⁪‪‎​‌‎⁯‮‎‬‍‍‌⁫⁭‭‌‎‭⁬‫⁬‫⁬‏⁯⁫⁬‎⁬⁪‫​‎‫‭‬‬‮((RemoteCertificateValidationCallback) ((_param1, _param2, _param3, _param4) => true));
          num1 = -1301286068;
          continue;
        case 2:
          \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200E‏‫‬‭‌‮‭‌‍⁯‍‫‮‏‌‍‪⁯‏​⁬‭‫‎‌‫⁮⁮⁮‫‭‌‬‭‬‮‌‎‮‮ = (string) null;
          num1 = (int) num2 * 1974550840 ^ -1341822807;
          continue;
        case 3:
          goto label_1;
        case 4:
          goto label_3;
        case 5:
          \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206D‬‪⁯‭‫‫⁪‍‏‬⁮‮‭‮⁭⁭⁬⁭​⁫⁫⁭⁬⁭⁮‮‏⁭‌‬‪​⁭‏⁪​‫‮⁭‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206C‏‭⁬⁭⁪‮‪‫⁫‬‍‎⁪⁮⁭​⁭⁫⁫‌‌⁭⁬‌⁮‪⁪⁯‎⁭​‬‌‌​‮‭⁯⁫‮());
          num1 = (int) num2 * -775579152 ^ 238183887;
          continue;
        case 6:
          \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u206C‍‪⁯​‮‭⁬‍‭‎⁪⁯⁬‏​‮‎‬⁮‫‪‪⁮⁫‍⁪⁮⁮‬‭‭‎‎⁫​‪‭‎⁫‮ = (string) null;
          \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200E‎‌‍‬⁫‍‪‌​‪‬‮⁪​⁯‌‬⁬⁬‎‍‎⁮‍‏⁭⁫⁬‪⁫‏‎⁯⁮⁬‍‏⁬‬‮ = (string) null;
          num1 = (int) num2 * 1647723327 ^ 978260651;
          continue;
        case 7:
          goto label_7;
        case 8:
          int num3 = (int) \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202E⁪⁪‌⁯‎⁮‍⁭‍‎​‭‏⁮⁫⁮‫‍⁪⁪‏‭​⁯⁯‌‬​‫‎‬‌‮‮‫⁪​⁭⁯‮(\u003CModule\u003E.\u200C⁫⁫⁯⁪⁬⁬‮‏‮⁮‪‪⁬‬‎‫⁭‪⁪⁪‬‌‎⁪⁬⁬‭‮‏‌‪​⁯⁬‫⁭​‍‏‮<string>(2678861767U), \u206C‭‫​⁪‭⁭⁫‪‪‮‎‬‬‏‏​‍‏‎⁮‬‬‍⁪⁮⁬⁪‏⁮‌⁬⁬‬⁬‭‪⁬‍⁭‮.\u202C‭‍⁫⁯⁬⁯‮⁫‮‌‎‭⁭⁪‏‭⁮‪‍‭‫‪⁮⁬‎‍⁪⁯⁪‬⁯‮‭‬⁪‎⁪⁫‮‮);
          num1 = (int) num2 * -991684362 ^ -1866917168;
          continue;
        default:
          goto label_10;
      }
    }
label_3:
    return;
label_10:
    \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200B‫‏⁪​​⁭⁮‪‬‬‫‍‮⁪‎⁭⁯‌⁭⁯‍‮⁯‮⁬⁪⁪​‎‭⁮‍‌⁪‪‍⁭‮‍‮ = (string) null;
    \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200F⁫‭⁯‎‮‎‮‪⁯‫‭‮‪‭⁭​‮‬⁮⁭⁭⁬‮‏‍⁯‎‍⁯‍‪‍‌⁮​‪⁪‬‌‮ = false;
    return;
label_7:
    \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u202E​‎‫⁬‬‫⁮⁭‎​‎‪⁯‪⁯‪⁯‪⁪⁮‫‮⁫⁯‫⁮⁭‎⁭‫⁯‪⁫‍‭‏​‭‏‮ = (string) null;
    num1 = -142008738;
    goto label_2;
  }

  private static bool \u202B‭‬‌‮⁫⁯‌‬​‬‌‎⁮⁫‏⁪​‌‮⁭⁬⁬‪​⁯​‮‍‎‭⁫⁯‭⁬⁮⁮‌⁬⁫‮(
    object _param0,
    X509Certificate _param1,
    X509Chain _param2,
    SslPolicyErrors _param3)
  {
    if (_param1 != null)
    {
label_1:
      uint num;
      switch ((num = (uint) (-1637766564 ^ -1545765693)) % 3U)
      {
        case 0:
          goto label_1;
        case 1:
          return \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206E⁪‫‍⁬⁫‏‮‏‪‌⁫⁯‬⁪‭‭‭⁮‌‫⁬‎⁮⁭⁮⁭‪⁬‌⁫⁭⁬‎​⁫⁮​‭⁭‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200F‮‪‬⁮⁭‬‮⁭‭⁫‏‭‏‮⁪⁯‏⁯‪⁮⁭⁮‭​‌‪‍​‭⁫⁬‌‎‪⁯‭‫‏‬‮(_param1), \u003CModule\u003E.\u200E⁫‭‏⁭‍⁪⁬⁬⁫⁭⁬⁫‮‌‪⁮‬⁮‎⁮⁮⁮‏⁪⁬‫⁪​‌‫‬⁭‍‮‌⁮‪‭⁪‮<string>(1281726637U));
      }
    }
    return false;
  }

  public static string \u200B‫⁮⁪‎‮‍‭⁫‏⁯⁭⁯⁫‌‌‍‌‫‍⁬‮⁭⁫‍⁭‪⁯‍‏‬⁯‮‪‫‮‏‫⁬‬‮(string _param0)
  {
    MD5 md5 = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202D‏‮‏‫‏‎⁭‌‬‎‍‭‪⁯‬‏⁫⁫‪‏⁪⁬⁬⁭⁮‫⁫⁪‭⁯‌‪⁪‎‮⁬‪‪‏‮();
    try
    {
      FileStream fileStream = \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206A‭⁯⁮‌‬⁫⁯⁭‍‫‏⁯‪⁪‭‏⁭‏‮‮‪‎‍‮‍‮‍‬⁭⁯‫‎‬⁯‌⁭⁯‏‫‮(_param0);
      try
      {
        return \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206C⁫‌‪​‫⁪‏‮⁫⁫‏⁭⁭⁬‬‏⁫⁯⁭​⁬‍‌‭⁯⁭‮‮‌‏⁯⁮‌‎‍‫‏⁭⁫‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u200F‮⁭‪​‭‬‎⁮⁭‍​​‮‌⁭⁭‪⁫⁯⁮‪‮⁬⁪‭⁮⁪⁪‬⁪⁭⁭​‍‍⁯⁫⁭⁫‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206B‍⁭⁬‏‬‫⁯‍‫⁪‮‫‏‌⁬‬‭⁮‫⁪⁯⁭‭‏‌‫​‮‌‎‪‌⁪⁫⁯‮‬‫⁯‮(\u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u202B‬⁬⁬⁭‪⁪‏⁭⁫‪‪‌‪‫⁪⁬⁫‍‌‎⁮⁯‬​‎​‭‭⁭⁭​⁭‬⁬⁭⁫‬‏⁮‮((HashAlgorithm) md5, (Stream) fileStream)), \u003CModule\u003E.\u200F‏‬‎‏⁭‏⁮‌⁬‪​‎‫‍⁮‭⁬⁪⁮⁭⁯‎‏‫⁫‮‏⁬⁫‌⁫​⁪​‍‭⁭⁮‭‮<string>(3974253296U), nameof ()));
      }
      finally
      {
        if (fileStream != null)
        {
label_4:
          int num1 = -1962936454;
          while (true)
          {
            uint num2;
            switch ((num2 = (uint) (num1 ^ -671138902)) % 3U)
            {
              case 1:
                \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206D​‎⁮⁪‮⁮‎⁬‬‪‭⁪⁫⁯‫‏⁭​‎‍‭⁫‮⁬‮‏‫‍‪⁮⁮‏⁯‭⁮⁬⁯‫‏‮((IDisposable) fileStream);
                num1 = (int) num2 * 1542403856 ^ -790158077;
                continue;
              case 2:
                goto label_4;
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
      if (md5 != null)
      {
label_9:
        int num3 = -575304964;
        while (true)
        {
          uint num4;
          switch ((num4 = (uint) (num3 ^ -671138902)) % 3U)
          {
            case 0:
              goto label_9;
            case 2:
              \u200B‫⁯⁭‮‏⁬‏‍⁬⁯‎‭⁯‎‎⁯⁪‮‭⁪⁯‬‌‭‭​‮⁪⁬‭‫‬‮​⁯‫‪⁮‮.\u206D​‎⁮⁪‮⁮‎⁬‬‪‭⁪⁫⁯‫‏⁭​‎‍‭⁫‮⁬‮‏‫‍‪⁮⁮‏⁯‭⁮⁬⁯‫‏‮((IDisposable) md5);
              num3 = (int) num4 * 864964271 ^ -1989604899;
              continue;
            default:
              goto label_12;
          }
        }
      }
label_12:;
    }
  }

  public static bool \u202C‌‌‫‎⁬‫⁫‬‏‏⁪‭‏‍‌‍‪‌‪⁭​‭⁫⁬‮⁮⁬‬‍‎‌‭⁪‮‍⁮‮⁬‎‮(string _param0)
  {
    TimeSpan timeSpan = DateTime.Parse(_param0) - DateTime.Now;
    int num1 = timeSpan.Seconds;
label_1:
    int num2 = 751599178;
    while (true)
    {
      uint num3;
      switch ((num3 = (uint) (num2 ^ 1843787430)) % 6U)
      {
        case 0:
          goto label_1;
        case 1:
          \u200C⁪​‪‫‭​‎⁫⁬⁪⁮‮‎‌‪‪⁬⁯⁫‭‫⁮‍‌‌‮​‬‌⁮‫⁬‮​⁯‎‮‫⁯‮.\u200D‎⁬‪‎⁪‪​‪⁪‌‏‭⁭‮‎‏‏‍⁯‫​⁭‍‏‏‬⁭‎⁬‮‍‬‮‌‎‪‪‮ = true;
          num2 = 1146442215;
          continue;
        case 2:
          num1 = timeSpan.Minutes;
          int num4 = Convert.ToInt32(num1.ToString().Replace(\u003CModule\u003E.\u200C⁫⁫⁯⁪⁬⁬‮‏‮⁮‪‪⁬‬‎‫⁭‪⁪⁪‬‌‎⁪⁬⁬‭‮‏‌‪​⁯⁬‫⁭​‍‏‮<string>(1416629819U), nameof ())) >= 1 ? 742479415 : (num4 = 593091867);
          num2 = num4 ^ (int) num3 * -1753692308;
          continue;
        case 4:
          int num5 = Convert.ToInt32(num1.ToString().Replace(\u003CModule\u003E.\u200F⁮⁯⁮‏‍‬‎‍⁬‪‬‭⁫‎‍‬⁮⁮⁭⁯⁮‮‪‫‏‎‌‌​‪‮⁮‪​‮‪⁫‎⁪‮<string>(2396454476U), nameof ())) < 5 ? -1207228852 : (num5 = -28153177);
          num2 = num5 ^ (int) num3 * -1743824010;
          continue;
        case 5:
          goto label_3;
        default:
          goto label_7;
      }
    }
label_3:
    return true;
label_7:
    return false;
  }

  static MD5 \u202D‏‮‏‫‏‎⁭‌‬‎‍‭‪⁯‬‏⁫⁫‪‏⁪⁬⁬⁭⁮‫⁫⁪‭⁯‌‪⁪‎‮⁬‪‪‏‮() => MD5.Create();

  static Encoding \u200B‮⁪⁭‮⁫‍‬⁯‪‏‌‮⁫⁬‮⁯‪‭⁯‬‎‏‌⁭⁯⁭‬‎⁬‏⁮‌⁫‌‮⁪‭​‍‮() => Encoding.UTF8;

  static byte[] \u202D⁮‪⁯‫‫‪‮⁬⁪⁪‬‭​‭‬‮‬‌‮⁯‏⁪‭‌⁫⁬‎‌‮‫⁯​‌‪​⁯‫‬‎‮([In] Encoding obj0, [In] string obj1) => obj0.GetBytes(obj1);

  static byte[] \u206B‏⁪‏⁯⁬‮‍‫​‮⁪‌‮‭‌⁭‪⁭‪⁬‭‌‍‎‌‮⁯‪‎‮⁭​⁪⁬‪‎‬‬‏‮([In] HashAlgorithm obj0, [In] byte[] obj1) => obj0.ComputeHash(obj1);

  static string \u206B‍⁭⁬‏‬‫⁯‍‫⁪‮‫‏‌⁬‬‭⁮‫⁪⁯⁭‭‏‌‫​‮‌‎‪‌⁪⁫⁯‮‬‫⁯‮([In] byte[] obj0) => BitConverter.ToString(obj0);

  static string \u200F‮⁭‪​‭‬‎⁮⁭‍​​‮‌⁭⁭‪⁫⁯⁮‪‮⁬⁪‭⁮⁪⁪‬⁪⁭⁭​‍‍⁯⁫⁭⁫‮(
    [In] string obj0,
    [In] string obj1,
    [In] string obj2)
  {
    return obj0.Replace(obj1, obj2);
  }

  static void \u206D​‎⁮⁪‮⁮‎⁬‬‪‭⁪⁫⁯‫‏⁭​‎‍‭⁫‮⁬‮‏‫‍‪⁮⁮‏⁯‭⁮⁬⁯‫‏‮([In] IDisposable obj0) => obj0.Dispose();

  static Random \u202C‬‭⁭⁬‍⁮‌​‫‬‬​⁮⁪‍‌⁭⁫‮⁭⁮‬⁮⁯‏‭‍⁭⁪‍⁪⁭⁯‮‮‌‌‌⁭‮() => new Random();

  static string \u202A​⁪‬‪‬⁪‎⁮‭‭​⁬‎⁭⁮⁮⁮‭‎⁪‍⁭⁮⁯‬⁭‌⁪⁮‌‬‫​‌‎‪‫⁫‌‮([In] char[] obj0) => new string(obj0);

  static string \u200B‌‫‌‭‏​‫⁪‍‌‍‭‍‎⁮‮‪⁮​​​‏‎⁫‪⁪⁬⁮‭‬‮⁬‬‬‎‍‫⁪⁯‮() => Environment.SystemDirectory;

  static string \u202C⁮‮‬⁯​⁪‭‌⁪‍⁯⁪⁫‍‬⁭​‫‫⁬⁫⁯‮‬​⁯‭‫‫​‬⁭⁫‪⁯​‮‬⁯‮([In] string obj0) => Path.GetPathRoot(obj0);

  static DialogResult \u202E⁪⁪‌⁯‎⁮‍⁭‍‎​‭‏⁮⁫⁮‫‍⁪⁪‏‭​⁯⁯‌‬​‫‎‬‌‮‮‫⁪​⁭⁯‮([In] string obj0, [In] string obj1) => MessageBox.Show(obj0, obj1);

  static Process \u206C‏‭⁬⁭⁪‮‪‫⁫‬‍‎⁪⁮⁭​⁭⁫⁫‌‌⁭⁬‌⁮‪⁪⁯‎⁭​‬‌‌​‮‭⁯⁫‮() => Process.GetCurrentProcess();

  static void \u206D‬‪⁯‭‫‫⁪‍‏‬⁮‮‭‮⁭⁭⁬⁭​⁫⁫⁭⁬⁭⁮‮‏⁭‌‬‪​⁭‏⁪​‫‮⁭‮([In] Process obj0) => obj0.Kill();

  static string \u200E​‪‏‌​‏⁯‪‎‏‫⁬‮‭‪⁮⁬‭‪⁬⁭⁯‭⁬⁮‍‎‏‍⁯‍‎‫‪⁮‮⁫‭‫‮([In] string obj0, [In] string obj1) => obj0 + obj1;

  static StreamReader \u200D‬‬‬‬‮⁮⁯‪⁪‍⁫‫⁫‭⁮‌‪⁬⁫⁫‎⁪‏‎‬⁯‭⁪⁬‏‮‬‭‍​⁪⁮⁪‭‮([In] string obj0) => new StreamReader(obj0);

  static string \u206C‌⁬⁫‍​‫‮⁫‏‪‏‪‍⁪⁬⁫‫⁮⁭​‌⁬⁬​‫‬​‏‫‫⁬⁯‍⁭‍⁭‫⁬‭‮([In] TextReader obj0) => obj0.ReadToEnd();

  static bool \u206D⁬‫⁬⁪⁯⁯‎‬‍⁪⁯‫‬‌⁬‮⁪‪‫‏​⁯‭‬⁪⁬‭⁪‌‌‌⁯‫‮‪‍‏‎‬‮([In] string obj0, [In] string obj1) => obj0.Contains(obj1);

  static DialogResult \u200E⁭‭⁯‎‫‮​‭‬⁫‮⁮‮‎‫‎⁪​‪⁬‍​‏‫‎​‮‍‪⁮‬‏‎‭‬‌⁯‮‌‮(
    [In] string obj0,
    [In] string obj1,
    [In] MessageBoxButtons obj2,
    [In] MessageBoxIcon obj3)
  {
    return MessageBox.Show(obj0, obj1, obj2, obj3);
  }

  static RemoteCertificateValidationCallback \u206A​‌⁫⁬‏‌‮‌‎⁫​‍‍‮‭‮​‮​‪‭‭⁯​⁭⁪‌⁯‏‪‮⁬⁪‌‌⁮⁬⁯⁯‮() => ServicePointManager.ServerCertificateValidationCallback;

  static Delegate \u206E‎⁭‪⁮⁬‎‬‬‪‫⁪‌‮‌⁯‮⁪⁯‬‭‎⁯‍‎⁮⁬⁭‏‮‫‬⁬⁯‮⁬⁪‍⁬⁭‮([In] Delegate obj0, [In] Delegate obj1) => Delegate.Combine(obj0, obj1);

  static void \u202A‍⁪‪‎​‌‎⁯‮‎‬‍‍‌⁫⁭‭‌‎‭⁬‫⁬‫⁬‏⁯⁫⁬‎⁬⁪‫​‎‫‭‬‬‮(
    [In] RemoteCertificateValidationCallback obj0)
  {
    ServicePointManager.ServerCertificateValidationCallback = obj0;
  }

  static Encoding \u200E⁯‭⁬‮⁭‪⁪‭‍‮‮‎⁪⁫⁫⁪‪⁯‎‎⁫‍‪‍⁯‪‬‫‎‏‫‫‏‌‏⁬‫⁬⁭‮() => Encoding.Default;

  static string \u200E​‍‌‎‫⁫⁬⁮‎‌‪‮‎⁭⁬⁭‏‫‌⁮⁫‌‫⁪‍‌⁪‎⁭⁫⁯‬‏⁬⁬‏‫‫‌‮([In] byte[] obj0) => Convert.ToBase64String(obj0);

  static string \u200F‮‪‬⁮⁭‬‮⁭‭⁫‏‭‏‮⁪⁯‏⁯‪⁮⁭⁮‭​‌‪‍​‭⁫⁬‌‎‪⁯‭‫‏‬‮([In] X509Certificate obj0) => obj0.GetPublicKeyString();

  static bool \u206E⁪‫‍⁬⁫‏‮‏‪‌⁫⁯‬⁪‭‭‭⁮‌‫⁬‎⁮⁭⁮⁭‪⁬‌⁫⁭⁬‎​⁫⁮​‭⁭‮([In] string obj0, [In] string obj1) => obj0 == obj1;

  static FileStream \u206A‭⁯⁮‌‬⁫⁯⁭‍‫‏⁯‪⁪‭‏⁭‏‮‮‪‎‍‮‍‮‍‬⁭⁯‫‎‬⁯‌⁭⁯‏‫‮([In] string obj0) => System.IO.File.OpenRead(obj0);

  static byte[] \u202B‬⁬⁬⁭‪⁪‏⁭⁫‪‪‌‪‫⁪⁬⁫‍‌‎⁮⁯‬​‎​‭‭⁭⁭​⁭‬⁬⁭⁫‬‏⁮‮([In] HashAlgorithm obj0, [In] Stream obj1) => obj0.ComputeHash(obj1);

  static string \u206C⁫‌‪​‫⁪‏‮⁫⁫‏⁭⁭⁬‬‏⁫⁯⁭​⁬‍‌‭⁯⁭‮‮‌‏⁯⁮‌‎‍‫‏⁭⁫‮([In] string obj0) => obj0.ToLowerInvariant();
}
