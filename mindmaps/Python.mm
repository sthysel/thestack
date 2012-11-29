<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1348157777946" ID="ID_1368744468" MODIFIED="1348157836160" TEXT="Python stack">
<node CREATED="1339019421618" FOLDED="true" ID="ID_1505930316" MODIFIED="1348188162168" POSITION="right" TEXT="Python">
<node CREATED="1339019427074" FOLDED="true" ID="ID_568212860" MODIFIED="1348157993255" TEXT="Strings">
<node CREATED="1339610363789" FOLDED="true" ID="ID_751966069" MODIFIED="1340252839099" TEXT="String Formatting Language">
<node CREATED="1339618700442" ID="ID_1780381632" MODIFIED="1339625420302" TEXT="For use with the string.format() string method"/>
<node CREATED="1339625072096" ID="ID_290877859" MODIFIED="1340252764685" TEXT="Formal specification">
<node CREATED="1339610411459" FOLDED="true" ID="ID_1616116257" MODIFIED="1340252770386" TEXT="Grammar for string formatting">
<node CREATED="1339610419178" ID="ID_1430569249" MODIFIED="1339610422392" TEXT="replacement_field ::=  &quot;{&quot; [field_name] [&quot;!&quot; conversion] [&quot;:&quot; format_spec] &quot;}&quot;&#xa;field_name        ::=  arg_name (&quot;.&quot; attribute_name | &quot;[&quot; element_index &quot;]&quot;)*&#xa;arg_name          ::=  [identifier | integer]&#xa;attribute_name    ::=  identifier&#xa;element_index     ::=  integer | index_string&#xa;index_string      ::=  &lt;any source character except &quot;]&quot;&gt; +&#xa;conversion        ::=  &quot;r&quot; | &quot;s&quot;&#xa;format_spec       ::=  &lt;described in the next section&gt;"/>
<node CREATED="1339610475255" ID="ID_579399276" MODIFIED="1339610475877" TEXT="The positional argument specifiers can be omitted, so &apos;{} {}&apos; is equivalent to &apos;{0} {1}&apos;."/>
<node CREATED="1339633046251" FOLDED="true" ID="ID_1141531908" MODIFIED="1340252630792" TEXT="Conversion (optional parameter)">
<node CREATED="1339635637924" ID="ID_77888683" MODIFIED="1339635678160" TEXT="The explicit conversion flag is used to transform the format field value before it is formatted.  This can be used to override the type-specific formatting behavior, and format the value as if it were a more generic type.  Currently, two explicit conversion flags are recognized:&#xa;&#xa;        !r - convert the value to a string using repr().&#xa;        !s - convert the value to a string using str().&#xa;&#xa;These flags are placed before the format specifier:&#xa;&#xa;        &quot;{0!r:20}&quot;.format(&quot;Hello&quot;)&#xa;&#xa;In the preceding example, the string &quot;Hello&quot; will be printed, with quotes, in a field of at least 20 characters width.&#xa;    &#xa;A custom Formatter class can define additional conversion flags. The built-in formatter will raise a ValueError if an invalid conversion flag is specified."/>
</node>
</node>
<node CREATED="1339623992168" FOLDED="true" ID="ID_1814717319" MODIFIED="1340252817665" TEXT="Format specification (optional parameter)">
<node CREATED="1339623998280" ID="ID_1248464238" MODIFIED="1339624000781" TEXT="format_spec ::=  [[fill]align][sign][#][0][width][,][.precision][type]&#xa;fill        ::=  &lt;a character other than &apos;{&apos; or &apos;}&apos;&gt;&#xa;align       ::=  &quot;&lt;&quot; | &quot;&gt;&quot; | &quot;=&quot; | &quot;^&quot;&#xa;sign        ::=  &quot;+&quot; | &quot;-&quot; | &quot; &quot;&#xa;width       ::=  integer&#xa;precision   ::=  integer&#xa;type        ::=  &quot;b&quot; | &quot;c&quot; | &quot;d&quot; | &quot;e&quot; | &quot;E&quot; | &quot;f&quot; | &quot;F&quot; | &quot;g&quot; | &quot;G&quot; | &quot;n&quot; | &quot;o&quot; | &quot;s&quot; | &quot;x&quot; | &quot;X&quot; | &quot;%&quot;"/>
<node CREATED="1339632844195" FOLDED="true" ID="ID_1062538461" MODIFIED="1339635510850" TEXT="Format specifiers (from PEP)">
<node CREATED="1339632850786" ID="ID_558336216" MODIFIED="1339632887169" TEXT="Each field can also specify an optional set of &apos;format specifiers&apos; which can be used to adjust the format of that field. Format specifiers follow the field name, with a colon (&apos;:&apos;) character separating the two:&#xa;&#xa;&quot;My name is {0:8}&quot;.format(&apos;Fred&apos;)&#xa;&#xa;The meaning and syntax of the format specifiers depends on the type of object that is being formatted, but there is a standard set of format specifiers used for any object that does not override them."/>
<node CREATED="1339632939871" ID="ID_1349826400" MODIFIED="1339632986933" TEXT="Format specifiers can themselves contain replacement fields. For example, a field whose field width is itself a parameter could be specified via:&#xa;&#xa;        &quot;{0:{1}}&quot;.format(a, b)&#xa;&#xa;These &apos;internal&apos; replacement fields can only occur in the format specifier part of the replacement field.  Internal replacement fields cannot themselves have format specifiers.  This implies also that replacement fields cannot be nested to arbitrary levels.&#xa;&#xa;Note that the doubled &apos;}&apos; at the end, which would normally be escaped, is not escaped in this case.  The reason is because the &apos;{{&apos; and &apos;}}&apos; syntax for escapes is only applied when used *outside* of a format field.  Within a format field, the brace characters always have their normal meaning.&#xa;"/>
</node>
<node CREATED="1339635053206" FOLDED="true" ID="ID_145472018" MODIFIED="1339635107175" TEXT="Fill (optional parameter)">
<node CREATED="1339635062453" ID="ID_457479069" MODIFIED="1339635064003" TEXT="The optional &apos;fill&apos; character defines the character to be used to     pad the field to the minimum width.  The fill character, if present,     must be followed by an alignment flag."/>
</node>
<node CREATED="1339623719028" FOLDED="true" ID="ID_1574127130" MODIFIED="1340252817160" TEXT="Alignment (optional paremeter)">
<node CREATED="1339623727652" ID="ID_357061690" MODIFIED="1339623736769" TEXT="&apos;&lt;&apos; - Forces the field to be left-aligned within the available space (this is the default for most objects)."/>
<node CREATED="1339623743555" ID="ID_629992883" MODIFIED="1339623752192" TEXT="&apos;&gt;&apos; - Forces the field to be right-aligned within the available space (this is the default for numbers)."/>
<node CREATED="1339623758570" ID="ID_1110328878" MODIFIED="1339623768792" TEXT="&apos;=&apos; - Forces the padding to be placed after the sign (if any) but before the digits. This is used for printing fields in the form &#x2018;+000000120&#x2019;. This alignment option is only valid for numeric types."/>
<node CREATED="1339623792161" ID="ID_722939191" MODIFIED="1339623795239" TEXT="&apos;^&apos; - Forces the field to be centered within the available space. "/>
</node>
<node CREATED="1339624468907" FOLDED="true" ID="ID_779790989" MODIFIED="1339635121102" TEXT="Sign (optional for number types)">
<node CREATED="1339624474339" ID="ID_464258388" MODIFIED="1339624579643" TEXT="&apos;+&apos;&#x9;indicates that a sign should be used for both positive as well as negative numbers.&#xa;&apos;-&apos;&#x9;indicates that a sign should be used only for negative numbers (this is the default).&#xa;&apos; &apos;&#x9;indicates that a leading space should be used on positive numbers, and a minus sign on negative numbers."/>
</node>
<node CREATED="1339633347975" FOLDED="true" ID="ID_627184992" MODIFIED="1339637623172" TEXT="# (optional parameter)">
<node CREATED="1339633351279" ID="ID_1044954590" MODIFIED="1339633370535" TEXT="If the &apos;#&apos; character is present, integers use the &apos;alternate form&apos; for formatting. This means that binary, octal, and hexadecimal output will be prefixed with &apos;0b&apos;, &apos;0o&apos;, and &apos;0x&apos;, respectively."/>
</node>
<node CREATED="1339633315265" FOLDED="true" ID="ID_535571826" MODIFIED="1339637621836" TEXT="0 (optional parameter)">
<node CREATED="1339633319497" ID="ID_575181729" MODIFIED="1339633330896" TEXT="If the width field is preceded by a zero (&apos;0&apos;) character, this enables zero-padding.  This is equivalent to an alignment type of &apos;=&apos; and a fill character of &apos;0&apos;."/>
</node>
<node CREATED="1339635185925" FOLDED="true" ID="ID_158600672" MODIFIED="1339635287467" TEXT="Width (optional parameter)">
<node CREATED="1339635202925" ID="ID_1159235982" MODIFIED="1339635216316" TEXT="&apos;width&apos; is a decimal integer defining the minimum field width. If not specified, then the field width will be determined by the content."/>
<node CREATED="1339635261491" ID="ID_1362525298" MODIFIED="1339635276370" TEXT="If the width field is preceded by a zero (&apos;0&apos;) character, this enables zero-padding. This is equivalent to an alignment type of &apos;=&apos; and a fill character of &apos;0&apos;."/>
</node>
<node CREATED="1339611858035" FOLDED="true" ID="ID_1395279572" MODIFIED="1339637542958" TEXT=", (optional parameter)">
<node CREATED="1339611863026" ID="ID_1332944322" MODIFIED="1339611865400" TEXT="&gt;&gt;&gt; &apos;{:,}&apos;.format(1234567890)&#xa;&apos;1,234,567,890&apos;"/>
</node>
<node CREATED="1339635367280" FOLDED="true" ID="ID_602192102" MODIFIED="1339637620941" TEXT="Precision (optional parameter)">
<node CREATED="1339635372184" ID="ID_896871960" MODIFIED="1339635398206" TEXT="The &apos;precision&apos; is a decimal number indicating how many digits should be displayed after the decimal point in a floating point conversion. For non-numeric types the field indicates the maximum field size - in other words, how many characters will be used from the field content. The precision is ignored for integer conversions."/>
</node>
<node CREATED="1339633193726" FOLDED="true" ID="ID_578459124" MODIFIED="1339637619813" TEXT="Type (optional parameter)">
<node CREATED="1339625087679" FOLDED="true" ID="ID_970260271" MODIFIED="1339635313097" TEXT="Converting a number to a different base">
<node CREATED="1339625095135" ID="ID_1226803825" MODIFIED="1339625097605" TEXT="&apos;b&apos;&#x9;Binary format. Outputs the number in base 2.&#xa;&apos;c&apos;&#x9;Character. Converts the integer to the corresponding unicode character before printing.&#xa;&apos;d&apos;&#x9;Decimal Integer. Outputs the number in base 10.&#xa;&apos;o&apos;&#x9;Octal format. Outputs the number in base 8.&#xa;&apos;x&apos;&#x9;Hex format. Outputs the number in base 16, using lower- case letters for the digits above 9.&#xa;&apos;X&apos;&#x9;Hex format. Outputs the number in base 16, using upper- case letters for the digits above 9.&#xa;&apos;n&apos;&#x9;Number. This is the same as &apos;d&apos;, except that it uses the current locale setting to insert the appropriate number separator characters.&#xa;None&#x9;The same as &apos;d&apos;.&#xa;"/>
</node>
<node CREATED="1339625244913" FOLDED="true" ID="ID_751583332" MODIFIED="1339633204309" TEXT="Types for floating point and decimal values">
<node CREATED="1339625250824" ID="ID_1929521831" MODIFIED="1339625282948" TEXT="&apos;e&apos;&#x9;Exponent notation. Prints the number in scientific notation using the letter &#x2018;e&#x2019; to indicate the exponent.&#xa;&apos;E&apos;&#x9;Exponent notation. Same as &apos;e&apos; except it uses an upper case &#x2018;E&#x2019; as the separator character.&#xa;&apos;f&apos;&#x9;Fixed point. Displays the number as a fixed-point number.&#xa;&apos;F&apos;&#x9;Fixed point. Same as &apos;f&apos;.&#xa;&apos;G&apos;&#x9;General format. Same as &apos;g&apos; except switches to &apos;E&apos; if the number gets too large. The representations of infinity and NaN are uppercased, too.&#xa;&apos;n&apos;&#x9;Number. This is the same as &apos;g&apos;, except that it uses the current locale setting to insert the appropriate number separator characters.&#xa;&apos;%&apos;&#x9;Percentage. Multiplies the number by 100 and displays in fixed (&apos;f&apos;) format, followed by a percent sign.&#xa;None&#x9;The same as &apos;g&apos;."/>
<node CREATED="1339625284391" ID="ID_1399104740" MODIFIED="1339625296340" TEXT="&apos;g&apos;&#x9;General format. For a given precision p &gt;= 1, this rounds the number to p significant digits and then formats the result in either fixed-point format or in scientific notation, depending on its magnitude.&#xa;&#xa;The precise rules are as follows: suppose that the result formatted with presentation type &apos;e&apos; and precision p-1 would have exponent exp. Then if -4 &lt;= exp &lt; p, the number is formatted with presentation type &apos;f&apos; and precision p-1-exp. Otherwise, the number is formatted with presentation type &apos;e&apos; and precision p-1. In both cases insignificant trailing zeros are removed from the significand, and the decimal point is also removed if there are no remaining digits following it.&#xa;&#xa;Positive and negative infinity, positive and negative zero, and nans, are formatted as inf, -inf, 0, -0 and nan respectively, regardless of the precision.&#xa;&#xa;A precision of 0 is treated as equivalent to a precision of 1."/>
</node>
</node>
</node>
<node CREATED="1339635438245" FOLDED="true" ID="ID_1853660470" MODIFIED="1340252792065" TEXT="Using format with objects (like datetime)">
<node CREATED="1339635457059" ID="ID_938366534" MODIFIED="1339635481898" TEXT="Objects are able to define their own format specifiers to replace the standard ones.  An example is the &apos;datetime&apos; class, whose format specifiers might look something like the arguments to the strftime() function:&#xa;&#xa;        &quot;Today is: {0:%a %b %d %H:%M:%S %Y}&quot;.format(datetime.now())&#xa;&#xa;For all built-in types, an empty format specification will produce the equivalent of str(value).  It is recommended that objects defining their own format specifiers follow this convention as well."/>
</node>
</node>
<node CREATED="1339625345604" FOLDED="true" ID="ID_1066954834" MODIFIED="1340252819969" TEXT="Examples of how to use">
<node CREATED="1339610487951" FOLDED="true" ID="ID_1937333345" MODIFIED="1340252730140" TEXT="Basic string formatting examples">
<node CREATED="1339610497967" ID="ID_431846731" MODIFIED="1339610500268" TEXT="&quot;First, thou shalt count to {0}&quot; # References first positional argument&#xa;&quot;Bring me a {}&quot;                  # Implicitly references the first positional argument&#xa;&quot;From {} to {}&quot;                  # Same as &quot;From {0} to {1}&quot;&#xa;&quot;My quest is {name}&quot;             # References keyword argument &apos;name&apos;&#xa;&quot;Weight in tons {0.weight}&quot;      # &apos;weight&apos; attribute of first positional arg&#xa;&quot;Units destroyed: {players[0]}&quot;  # First element of keyword argument &apos;players&apos;."/>
</node>
<node CREATED="1339611414838" FOLDED="true" ID="ID_1164350539" MODIFIED="1339618689276" TEXT="Access arguments by position">
<node CREATED="1339611419422" ID="ID_726364217" MODIFIED="1339611421980" TEXT="&gt;&gt;&gt; &apos;{0}, {1}, {2}&apos;.format(&apos;a&apos;, &apos;b&apos;, &apos;c&apos;)&#xa;&apos;a, b, c&apos;&#xa;&gt;&gt;&gt; &apos;{}, {}, {}&apos;.format(&apos;a&apos;, &apos;b&apos;, &apos;c&apos;)  # 2.7+ only&#xa;&apos;a, b, c&apos;&#xa;&gt;&gt;&gt; &apos;{2}, {1}, {0}&apos;.format(&apos;a&apos;, &apos;b&apos;, &apos;c&apos;)&#xa;&apos;c, b, a&apos;&#xa;&gt;&gt;&gt; &apos;{2}, {1}, {0}&apos;.format(*&apos;abc&apos;)      # unpacking argument sequence&#xa;&apos;c, b, a&apos;&#xa;&gt;&gt;&gt; &apos;{0}{1}{0}&apos;.format(&apos;abra&apos;, &apos;cad&apos;)   # arguments&apos; indices can be repeated&#xa;&apos;abracadabra&apos;"/>
</node>
<node CREATED="1339611432685" FOLDED="true" ID="ID_33779734" MODIFIED="1339637624492" TEXT="Accessing arguments by name">
<node CREATED="1339611441317" ID="ID_1665454088" MODIFIED="1339611443539" TEXT="&gt;&gt;&gt; &apos;Coordinates: {latitude}, {longitude}&apos;.format(latitude=&apos;37.24N&apos;, longitude=&apos;-115.81W&apos;)&#xa;&apos;Coordinates: 37.24N, -115.81W&apos;&#xa;&gt;&gt;&gt; coord = {&apos;latitude&apos;: &apos;37.24N&apos;, &apos;longitude&apos;: &apos;-115.81W&apos;}&#xa;&gt;&gt;&gt; &apos;Coordinates: {latitude}, {longitude}&apos;.format(**coord)&#xa;&apos;Coordinates: 37.24N, -115.81W&apos;"/>
</node>
<node CREATED="1339611451093" FOLDED="true" ID="ID_949463546" MODIFIED="1339624681471" TEXT="Accessing arguments&#x2019; attributes">
<node CREATED="1339611456245" ID="ID_351007583" MODIFIED="1339611458530" TEXT="&gt;&gt;&gt; c = 3-5j&#xa;&gt;&gt;&gt; (&apos;The complex number {0} is formed from the real part {0.real} &apos;&#xa;...  &apos;and the imaginary part {0.imag}.&apos;).format(c)&#xa;&apos;The complex number (3-5j) is formed from the real part 3.0 and the imaginary part -5.0.&apos;&#xa;&gt;&gt;&gt; class Point(object):&#xa;...     def __init__(self, x, y):&#xa;...         self.x, self.y = x, y&#xa;...     def __str__(self):&#xa;...         return &apos;Point({self.x}, {self.y})&apos;.format(self=self)&#xa;...&#xa;&gt;&gt;&gt; str(Point(4, 2))&#xa;&apos;Point(4, 2)&apos;"/>
</node>
<node CREATED="1339611540089" FOLDED="true" ID="ID_1872667963" MODIFIED="1339637626292" TEXT="Accessing arguments&#x2019; items">
<node CREATED="1339611544881" ID="ID_276413982" MODIFIED="1339611547350" TEXT="&gt;&gt;&gt; coord = (3, 5)&#xa;&gt;&gt;&gt; &apos;X: {0[0]};  Y: {0[1]}&apos;.format(coord)&#xa;&apos;X: 3;  Y: 5&apos;"/>
</node>
<node CREATED="1339611556848" FOLDED="true" ID="ID_1602758698" MODIFIED="1339625408631" TEXT="Replacing %s and %r">
<node CREATED="1339611562816" ID="ID_1202662002" MODIFIED="1339611566541" TEXT="&gt;&gt;&gt; &quot;repr() shows quotes: {!r}; str() doesn&apos;t: {!s}&quot;.format(&apos;test1&apos;, &apos;test2&apos;)&#xa;&quot;repr() shows quotes: &apos;test1&apos;; str() doesn&apos;t: test2&quot;"/>
</node>
<node CREATED="1339611716929" FOLDED="true" ID="ID_117424896" MODIFIED="1339625407583" TEXT="Aligning the text and specifying a width">
<node CREATED="1339611722736" ID="ID_882721076" MODIFIED="1339611725246" TEXT="&gt;&gt;&gt; &apos;{:&lt;30}&apos;.format(&apos;left aligned&apos;)&#xa;&apos;left aligned                  &apos;&#xa;&gt;&gt;&gt; &apos;{:&gt;30}&apos;.format(&apos;right aligned&apos;)&#xa;&apos;                 right aligned&apos;&#xa;&gt;&gt;&gt; &apos;{:^30}&apos;.format(&apos;centered&apos;)&#xa;&apos;           centered           &apos;&#xa;&gt;&gt;&gt; &apos;{:*^30}&apos;.format(&apos;centered&apos;)  # use &apos;*&apos; as a fill char&#xa;&apos;***********centered***********&apos;"/>
</node>
<node CREATED="1339611757375" FOLDED="true" ID="ID_1435671309" MODIFIED="1339637625380" TEXT="Replacing %+f, %-f, and % f and specifying a sign">
<node CREATED="1339611766847" ID="ID_1019202704" MODIFIED="1339611769421" TEXT="&gt;&gt;&gt; &apos;{:+f}; {:+f}&apos;.format(3.14, -3.14)  # show it always&#xa;&apos;+3.140000; -3.140000&apos;&#xa;&gt;&gt;&gt; &apos;{: f}; {: f}&apos;.format(3.14, -3.14)  # show a space for positive numbers&#xa;&apos; 3.140000; -3.140000&apos;&#xa;&gt;&gt;&gt; &apos;{:-f}; {:-f}&apos;.format(3.14, -3.14)  # show only the minus -- same as &apos;{:f}; {:f}&apos;&#xa;&apos;3.140000; -3.140000&apos;"/>
</node>
<node CREATED="1339611858035" FOLDED="true" ID="ID_935040013" MODIFIED="1339635345376" TEXT="Using the comma as a thousands separator:">
<node CREATED="1339611863026" ID="ID_1820617722" MODIFIED="1339611865400" TEXT="&gt;&gt;&gt; &apos;{:,}&apos;.format(1234567890)&#xa;&apos;1,234,567,890&apos;"/>
</node>
<node CREATED="1339611873658" FOLDED="true" ID="ID_1430224508" MODIFIED="1339625401783" TEXT="Expressing a percentage">
<node CREATED="1339611878626" ID="ID_1014078648" MODIFIED="1339611881615" TEXT="&gt;&gt;&gt; points = 19.5&#xa;&gt;&gt;&gt; total = 22&#xa;&gt;&gt;&gt; &apos;Correct answers: {:.2%}&apos;.format(points/total)&#xa;&apos;Correct answers: 88.64%&apos;"/>
</node>
<node CREATED="1339612018003" FOLDED="true" ID="ID_871318030" MODIFIED="1339637612037" TEXT="Using type-specific formatting">
<node CREATED="1339612025043" ID="ID_1848561737" MODIFIED="1339612027449" TEXT="&gt;&gt;&gt; import datetime&#xa;&gt;&gt;&gt; d = datetime.datetime(2010, 7, 4, 12, 15, 58)&#xa;&gt;&gt;&gt; &apos;{:%Y-%m-%d %H:%M:%S}&apos;.format(d)&#xa;&apos;2010-07-04 12:15:58&apos;"/>
</node>
<node CREATED="1339612068457" FOLDED="true" ID="ID_3429439" MODIFIED="1339635302354" TEXT="Nesting arguments and more complex examples">
<node CREATED="1339612073665" ID="ID_1082936998" MODIFIED="1339612076375" TEXT="&gt;&gt;&gt; for align, text in zip(&apos;&lt;^&gt;&apos;, [&apos;left&apos;, &apos;center&apos;, &apos;right&apos;]):&#xa;...     &apos;{0:{fill}{align}16}&apos;.format(text, fill=align, align=align)&#xa;...&#xa;&apos;left&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&apos;&#xa;&apos;^^^^^center^^^^^&apos;&#xa;&apos;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;right&apos;&#xa;&gt;&gt;&gt;&#xa;&gt;&gt;&gt; octets = [192, 168, 0, 1]&#xa;&gt;&gt;&gt; &apos;{:02X}{:02X}{:02X}{:02X}&apos;.format(*octets)&#xa;&apos;C0A80001&apos;&#xa;&gt;&gt;&gt; int(_, 16)&#xa;3232235521&#xa;&gt;&gt;&gt;&#xa;&gt;&gt;&gt; width = 5&#xa;&gt;&gt;&gt; for num in range(5,12):&#xa;...     for base in &apos;dXob&apos;:&#xa;...         print &apos;{0:{width}{base}}&apos;.format(num, base=base, width=width),&#xa;...     print&#xa;...&#xa;    5     5     5   101&#xa;    6     6     6   110&#xa;    7     7     7   111&#xa;    8     8    10  1000&#xa;    9     9    11  1001&#xa;   10     A    12  1010&#xa;   11     B    13  1011"/>
</node>
<node CREATED="1339611840323" FOLDED="true" ID="ID_772795195" MODIFIED="1339637617397" TEXT="Replacing %x and %o and converting the value to different bases">
<node CREATED="1339611846827" ID="ID_800574072" MODIFIED="1339637616662" TEXT="&gt;&gt;&gt; # format also supports binary numbers&#xa;&gt;&gt;&gt; &quot;int: {0:d};  hex: {0:x};  oct: {0:o};  bin: {0:b}&quot;.format(42)&#xa;&apos;int: 42;  hex: 2a;  oct: 52;  bin: 101010&apos;&#xa;&gt;&gt;&gt; # with 0x, 0o, or 0b as prefix:&#xa;&gt;&gt;&gt; &quot;int: {0:d};  hex: {0:#x};  oct: {0:#o};  bin: {0:#b}&quot;.format(42)&#xa;&apos;int: 42;  hex: 0x2a;  oct: 0o52;  bin: 0b101010&apos;"/>
<node CREATED="1339624442320" ID="ID_1118231933" MODIFIED="1339624448593" TEXT="&apos;b&apos;&#x9;Binary format. Outputs the number in base 2.&#xa;&apos;c&apos;&#x9;Character. Converts the integer to the corresponding unicode character before printing.&#xa;&apos;d&apos;&#x9;Decimal Integer. Outputs the number in base 10.&#xa;&apos;o&apos;&#x9;Octal format. Outputs the number in base 8.&#xa;&apos;x&apos;&#x9;Hex format. Outputs the number in base 16, using lower- case letters for the digits above 9.&#xa;&apos;X&apos;&#x9;Hex format. Outputs the number in base 16, using upper- case letters for the digits above 9.&#xa;&apos;n&apos;&#x9;Number. This is the same as &apos;d&apos;, except that it uses the current locale setting to insert the appropriate number separator characters.&#xa;None&#x9;The same as &apos;d&apos;."/>
</node>
<node CREATED="1339612086833" ID="ID_624516079" MODIFIED="1339625114077" TEXT="http://docs.python.org/library/string.html#formatexamples"/>
</node>
<node CREATED="1339636367587" FOLDED="true" ID="ID_623632205" MODIFIED="1339637506922" TEXT="Controlling Formatting on a Per-Type Basis">
<node CREATED="1339636687782" ID="ID_1763439582" MODIFIED="1339636727996" TEXT="Any class can override the __format__ method to provide custom formatting for that type:&#xa;&#xa;        class AST:&#xa;            def __format__(self, format_spec):&#xa;                ...&#xa;&#xa;Note for Python 2.x: The &apos;format_spec&apos; argument will be either a string object or a unicode object, depending on the type of the original format string.  The __format__ method should test the type of the specifiers parameter to determine whether to return a string or unicode object.  It is the responsibility of the __format__ method to return an object of the proper type.&#xa;    &#xa;Note that the &apos;explicit conversion&apos; flag mentioned above is not passed to the __format__ method.  Rather, it is expected that the conversion specified by the flag will be performed before calling __format__."/>
</node>
</node>
<node CREATED="1339175381430" FOLDED="true" ID="ID_1025014586" MODIFIED="1348157992784" TEXT="String methods">
<node CREATED="1339176673973" FOLDED="true" ID="ID_569521725" MODIFIED="1339605271661" TEXT="str.expandtabs([tabsize])">
<node CREATED="1339176679357" ID="ID_870825255" MODIFIED="1339176679945" TEXT="Return a copy of the string where all tab characters are replaced by one or more spaces, depending on the current column and the given tab size. The column number is reset to zero after each newline occurring in the string. If tabsize is not given, a tab size of 8 characters is assumed. This doesn&#x2019;t understand other non-printing characters or escape sequences."/>
</node>
<node CREATED="1339605488205" FOLDED="true" ID="ID_720522197" MODIFIED="1339618784431" TEXT="str.format(*args, **kwargs)">
<node CREATED="1339605523915" ID="ID_944922893" MODIFIED="1339605524801" TEXT="Perform a string formatting operation. The string on which this method is called can contain literal text or replacement fields delimited by braces {}. Each replacement field contains either the numeric index of a positional argument, or the name of a keyword argument. Returns a copy of the string where each replacement field is replaced with the string value of the corresponding argument."/>
<node CREATED="1339605531451" ID="ID_1458355907" MODIFIED="1339605533856" TEXT="&gt;&gt;&gt; &quot;The sum of 1 + 2 is {0}&quot;.format(1+2)&#xa;&apos;The sum of 1 + 2 is 3&apos;"/>
<node CREATED="1339605669437" ID="ID_524651587" MODIFIED="1339605679689" TEXT="&gt;&gt;&gt; s = &quot;aoeu {0} aoeu {1}&quot;&#xa;&gt;&gt;&gt; print s.format(1+2, 5)&#xa;aoeu 3 aoeu 5"/>
<node CREATED="1339610264065" FOLDED="true" ID="ID_258927800" MODIFIED="1339618765309" TEXT="Format string syntax">
<node CREATED="1339610272585" ID="ID_1247519946" MODIFIED="1339610275286" TEXT="&quot;First, thou shalt count to {0}&quot; # References first positional argument&#xa;&quot;Bring me a {}&quot;                  # Implicitly references the first positional argument&#xa;&quot;From {} to {}&quot;                  # Same as &quot;From {0} to {1}&quot;&#xa;&quot;My quest is {name}&quot;             # References keyword argument &apos;name&apos;&#xa;&quot;Weight in tons {0.weight}&quot;      # &apos;weight&apos; attribute of first positional arg&#xa;&quot;Units destroyed: {players[0]}&quot;  # First element of keyword argument &apos;players&apos;."/>
</node>
<node CREATED="1339606311376" ID="ID_1396206603" MODIFIED="1339606334005" TEXT="http://docs.python.org/library/string.html#formatstrings"/>
<node CREATED="1339606335935" FOLDED="true" ID="ID_1368245495" MODIFIED="1339618768653" TEXT="More tests">
<node CREATED="1339605735194" ID="ID_1930093907" MODIFIED="1339605752902" TEXT="&gt;&gt;&gt; s = &quot;aoeu {0} aoeu {1} {2}&quot;&#xa;&gt;&gt;&gt; print s.format(1+2, 5)&#xa;Traceback (most recent call last):&#xa;  File &quot;&lt;input&gt;&quot;, line 1, in &lt;module&gt;&#xa;IndexError: tuple index out of range&#xa;&gt;&gt;&gt; print s.format(1+2, 5, 7)&#xa;aoeu 3 aoeu 5 7&#xa;&gt;&gt;&gt; print s.format(1+2, 5, 7, 9)&#xa;aoeu 3 aoeu 5 7&#xa;"/>
</node>
</node>
<node CREATED="1339606658985" FOLDED="true" ID="ID_743848026" MODIFIED="1339606888456" TEXT="str.join(iterable)">
<node CREATED="1339606791987" ID="ID_978495842" MODIFIED="1339606792552" TEXT="Return a string which is the concatenation of the strings in the iterable iterable. The separator between elements is the string providing this method."/>
<node CREATED="1339606855552" ID="ID_288931959" MODIFIED="1339606885508" TEXT="&gt;&gt;&gt; iterable = [&apos;a&apos;, &apos;b&apos;, &apos;c&apos;]&#xa;&gt;&gt;&gt; print &apos; &apos;.join(iterable)&#xa;a b c&#xa;&gt;&gt;&gt; print &apos;,&apos;.join(iterable)&#xa;a,b,c"/>
</node>
<node CREATED="1339625521724" FOLDED="true" ID="ID_1682693955" MODIFIED="1339626096673" TEXT="str.replace(old, new[, count])">
<node CREATED="1339625528220" ID="ID_726196649" MODIFIED="1339625528609" TEXT="Return a copy of the string with all occurrences of substring old replaced by new. If the optional argument count is given, only the first count occurrences are replaced."/>
</node>
<node CREATED="1339625738754" FOLDED="true" ID="ID_745936071" MODIFIED="1342117072274" TEXT="Split and partition">
<node CREATED="1339625679277" FOLDED="true" ID="ID_1721656422" MODIFIED="1339625756656" TEXT="str.split([sep[, maxsplit]])">
<node CREATED="1339625686445" ID="ID_1721485849" MODIFIED="1339625689507" TEXT="Return a list of the words in the string, using sep as the delimiter string. If maxsplit is given, at most maxsplit splits are done (thus, the list will have at most maxsplit+1 elements). If maxsplit is not specified or -1, then there is no limit on the number of splits (all possible splits are made).&#xa;&#xa;If sep is given, consecutive delimiters are not grouped together and are deemed to delimit empty strings (for example, &apos;1,,2&apos;.split(&apos;,&apos;) returns [&apos;1&apos;, &apos;&apos;, &apos;2&apos;]). The sep argument may consist of multiple characters (for example, &apos;1&lt;&gt;2&lt;&gt;3&apos;.split(&apos;&lt;&gt;&apos;) returns [&apos;1&apos;, &apos;2&apos;, &apos;3&apos;]). Splitting an empty string with a specified separator returns [&apos;&apos;].&#xa;&#xa;If sep is not specified or is None, a different splitting algorithm is applied: runs of consecutive whitespace are regarded as a single separator, and the result will contain no empty strings at the start or end if the string has leading or trailing whitespace. Consequently, splitting an empty string or a string consisting of just whitespace with a None separator returns [].&#xa;&#xa;For example, &apos; 1  2   3  &apos;.split() returns [&apos;1&apos;, &apos;2&apos;, &apos;3&apos;], and &apos;  1  2   3  &apos;.split(None, 1) returns [&apos;1&apos;, &apos;2   3  &apos;]."/>
</node>
<node CREATED="1339625482958" FOLDED="true" ID="ID_1417613564" MODIFIED="1342117068937" TEXT="str.partition(sep)">
<node CREATED="1339625496956" ID="ID_109504637" MODIFIED="1339625498180" TEXT="Split the string at the first occurrence of sep, and return a 3-tuple containing the part before the separator, the separator itself, and the part after the separator. If the separator is not found, return a 3-tuple containing the string itself, followed by two empty strings."/>
</node>
<node CREATED="1339625599569" FOLDED="true" ID="ID_1150264684" MODIFIED="1339625735539" TEXT="str.rsplit([sep[, maxsplit]])">
<node CREATED="1339625607857" ID="ID_1169378267" MODIFIED="1339625608942" TEXT="Return a list of the words in the string, using sep as the delimiter string. If maxsplit is given, at most maxsplit splits are done, the rightmost ones. If sep is not specified or None, any whitespace string is a separator. Except for splitting from the right, rsplit() behaves like split() which is described in detail below."/>
</node>
<node CREATED="1339625575282" FOLDED="true" ID="ID_1399447391" MODIFIED="1339625761784" TEXT="str.rpartition(sep)">
<node CREATED="1339625586585" ID="ID_1096768171" MODIFIED="1339625587439" TEXT="Split the string at the last occurrence of sep, and return a 3-tuple containing the part before the separator, the separator itself, and the part after the separator. If the separator is not found, return a 3-tuple containing two empty strings, followed by the string itself."/>
</node>
<node CREATED="1339626228901" FOLDED="true" ID="ID_246852019" MODIFIED="1339626237629" TEXT="str.splitlines([keepends])">
<node CREATED="1339626234333" ID="ID_1526886526" MODIFIED="1339626236674" TEXT="Return a list of the lines in the string, breaking at line boundaries. Line breaks are not included in the resulting list unless keepends is given and true. This method uses the universal newlines approach to splitting lines. Unlike split(), if the string ends with line boundary characters the returned list does not have an empty last element.&#xa;&#xa;For example, &apos;ab c\n\nde fg\rkl\r\n&apos;.splitlines() returns [&apos;ab c&apos;, &apos;&apos;, &apos;de fg&apos;, &apos;kl&apos;], while the same call with splitlines(True) returns [&apos;ab c\n&apos;, &apos;\n, &apos;de fg\r&apos;, &apos;kl\r\n&apos;]."/>
</node>
</node>
<node CREATED="1339625764881" FOLDED="true" ID="ID_1395561768" MODIFIED="1339625798488" TEXT="Find and index">
<node CREATED="1339176698404" FOLDED="true" ID="ID_124081842" MODIFIED="1339625795906" TEXT="str.find(sub[, start[, end]])">
<node CREATED="1339176706331" ID="ID_937275174" MODIFIED="1339176706984" TEXT="Return the lowest index in the string where substring sub is found, such that sub is contained in the slice s[start:end]. Optional arguments start and end are interpreted as in slice notation. Return -1 if sub is not found."/>
<node CREATED="1339604969188" ID="ID_1023443864" MODIFIED="1339605159625" TEXT="s = &quot;aoeu&quot;&#xa;&gt;&gt;&gt; print s.find(&apos;o&apos;)&#xa;1&#xa;&gt;&gt;&gt; print s[::-1].find(&apos;o&apos;)&#xa;2&#xa;"/>
<node CREATED="1339606350814" FOLDED="true" ID="ID_1506308636" MODIFIED="1339606371630" TEXT="More tests">
<node CREATED="1339605160731" ID="ID_1929328868" MODIFIED="1339605179736" TEXT="s = &quot;aoeu&quot;&#xa;&gt;&gt;&gt; print s.find(&apos;o&apos;, 1)&#xa;1&#xa;&gt;&gt;&gt; print s.find(&apos;o&apos;, 2)&#xa;-1&#xa;&gt;&gt;&gt; print s.find(&apos;o&apos;, 1, -2)&#xa;1"/>
</node>
</node>
<node CREATED="1339606469088" FOLDED="true" ID="ID_64893073" MODIFIED="1339625795905" TEXT="str.index(sub[, start[, end]])">
<node CREATED="1339606474809" ID="ID_1576956942" MODIFIED="1339606475246" TEXT="Like find(), but raise ValueError when the substring is not found.  "/>
</node>
<node CREATED="1339625538484" FOLDED="true" ID="ID_1574978893" MODIFIED="1339625784095" TEXT="str.rfind(sub[, start[, end]])">
<node CREATED="1339625544587" ID="ID_1433518402" MODIFIED="1339625545569" TEXT="Return the highest index in the string where substring sub is found, such that sub is contained within s[start:end]. Optional arguments start and end are interpreted as in slice notation. Return -1 on failure."/>
</node>
<node CREATED="1339625553923" FOLDED="true" ID="ID_42591012" MODIFIED="1339625785486" TEXT="str.rindex(sub[, start[, end]])">
<node CREATED="1339625558139" ID="ID_631272690" MODIFIED="1339625558664" TEXT="Like rfind() but raises ValueError when the substring sub is not found."/>
</node>
</node>
<node CREATED="1339625814583" FOLDED="true" ID="ID_1538435938" MODIFIED="1339625838327" TEXT="Test whether the string is alphanumeric, all digits, lowercase, etc.">
<node CREATED="1339606488080" FOLDED="true" ID="ID_1875625527" MODIFIED="1339606515101" TEXT="str.isalnum()">
<node CREATED="1339606496568" ID="ID_210915976" MODIFIED="1339606497141" TEXT="Return true if all characters in the string are alphanumeric and there is at least one character, false otherwise.  For 8-bit strings, this method is locale-dependent."/>
</node>
<node CREATED="1339606523423" FOLDED="true" ID="ID_365863395" MODIFIED="1339606538558" TEXT="str.isalpha()">
<node CREATED="1339606532702" ID="ID_602184310" MODIFIED="1339606533059" TEXT="Return true if all characters in the string are alphabetic and there is at least one character, false otherwise.  For 8-bit strings, this method is locale-dependent."/>
</node>
<node CREATED="1339606539046" FOLDED="true" ID="ID_1780493370" MODIFIED="1339606546502" TEXT="str.isdigit()">
<node CREATED="1339606544901" ID="ID_1948161619" MODIFIED="1339606545186" TEXT="Return true if all characters in the string are digits and there is at least one character, false otherwise.  For 8-bit strings, this method is locale-dependent."/>
</node>
<node CREATED="1339606556165" FOLDED="true" ID="ID_898833445" MODIFIED="1339606562701" TEXT="str.islower()">
<node CREATED="1339606561661" ID="ID_297671816" MODIFIED="1339606561938" TEXT="Return true if all cased characters [4] in the string are lowercase and there is at least one cased character, false otherwise.  For 8-bit strings, this method is locale-dependent.  "/>
</node>
<node CREATED="1339606569117" FOLDED="true" ID="ID_256794459" MODIFIED="1339606576197" TEXT="str.isspace()">
<node CREATED="1339606574684" ID="ID_1087344861" MODIFIED="1339606574993" TEXT="Return true if there are only whitespace characters in the string and there is at least one character, false otherwise.  For 8-bit strings, this method is locale-dependent."/>
</node>
<node CREATED="1339606582844" FOLDED="true" ID="ID_6473856" MODIFIED="1339606641106" TEXT="str.istitle()">
<node CREATED="1339606599123" ID="ID_185933715" MODIFIED="1339606599456" TEXT="Return true if the string is a titlecased string and there is at least one character, for example uppercase characters may only follow uncased characters and lowercase characters only cased ones. Return false otherwise.  For 8-bit strings, this method is locale-dependent."/>
</node>
<node CREATED="1339606651569" FOLDED="true" ID="ID_1590452612" MODIFIED="1339606665614" TEXT="str.isupper()">
<node CREATED="1339606661873" ID="ID_1417944225" MODIFIED="1339606662198" TEXT="Return true if all cased characters [4] in the string are uppercase and there is at least one cased character, false otherwise.  For 8-bit strings, this method is locale-dependent."/>
</node>
</node>
<node CREATED="1339626077932" FOLDED="true" ID="ID_483796456" MODIFIED="1339626402447" TEXT="Test whether the string starts with or ends with X">
<node CREATED="1339626244844" FOLDED="true" ID="ID_1445648064" MODIFIED="1339626256529" TEXT="str.startswith(prefix[, start[, end]])">
<node CREATED="1339626254604" ID="ID_1925413655" MODIFIED="1339626254977" TEXT="Return True if string starts with the prefix, otherwise return False. prefix can also be a tuple of prefixes to look for. With optional start, test string beginning at that position. With optional end, stop comparing string at that position."/>
</node>
<node CREATED="1339176561274" FOLDED="true" ID="ID_1359328549" MODIFIED="1339626067402" TEXT="str.endswith(suffix[, start[, end]])">
<node CREATED="1339176569321" ID="ID_1010700836" MODIFIED="1339176570286" TEXT="Return True if the string ends with the specified suffix, otherwise return False. suffix can also be a tuple of suffixes to look for. With optional start, test beginning at that position. With optional end, stop comparing at that position."/>
</node>
<node CREATED="1339626313275" FOLDED="true" ID="ID_915702033" MODIFIED="1339626374775" TEXT="To test with a string contains a substring, just do &apos;x in s&apos;, which will return true or false">
<node CREATED="1339626371463" ID="ID_1529647818" MODIFIED="1339626373828" TEXT="&gt;&gt;&gt; s = &quot;aoeu&quot;&#xa;&gt;&gt;&gt; print &apos;a&apos; in s&#xa;True&#xa;&gt;&gt;&gt; print &apos;x&apos; in s&#xa;False&#xa;&gt;&gt;&gt; "/>
</node>
</node>
<node CREATED="1339625859278" FOLDED="true" ID="ID_1732620217" MODIFIED="1339625872698" TEXT="Encode and decode (including rot13)">
<node CREATED="1339176374282" FOLDED="true" ID="ID_1627514267" MODIFIED="1339176459110" TEXT="str.decode([encoding[, errors]])">
<node CREATED="1339176381386" ID="ID_1049838106" MODIFIED="1339176381854" TEXT="Decodes the string using the codec registered for encoding. encoding defaults to the default string encoding. errors may be given to set a different error handling scheme. The default is &apos;strict&apos;, meaning that encoding errors raise UnicodeError. Other possible values are &apos;ignore&apos;, &apos;replace&apos; and any other name registered via codecs.register_error(), see section Codec Base Classes."/>
</node>
<node CREATED="1339176478790" FOLDED="true" ID="ID_1482425873" MODIFIED="1339176560554" TEXT="str.encode([encoding[, errors]])">
<node CREATED="1339176489349" ID="ID_1598875532" MODIFIED="1339176490130" TEXT="Return an encoded version of the string. Default encoding is the current default string encoding. errors may be given to set a different error handling scheme. The default for errors is &apos;strict&apos;, meaning that encoding errors raise a UnicodeError. Other possible values are &apos;ignore&apos;, &apos;replace&apos;, &apos;xmlcharrefreplace&apos;, &apos;backslashreplace&apos; and any other name registered via codecs.register_error(), see section Codec Base Classes. For a list of possible encodings, see section Standard Encodings."/>
<node CREATED="1339176498173" ID="ID_1297681004" MODIFIED="1339176499025" TEXT="http://docs.python.org/library/codecs.html#standard-encodings"/>
</node>
</node>
<node CREATED="1339625962753" FOLDED="true" ID="ID_1149067789" MODIFIED="1339626005087" TEXT="left justify, center, right justify">
<node CREATED="1339625563530" FOLDED="true" ID="ID_687411373" MODIFIED="1339625569922" TEXT="str.rjust(width[, fillchar])">
<node CREATED="1339625568666" ID="ID_205909159" MODIFIED="1339625569016" TEXT="Return the string right justified in a string of length width. Padding is done using the specified fillchar (default is a space). The original string is returned if width is less than or equal to len(s)."/>
</node>
<node CREATED="1339176358875" FOLDED="true" ID="ID_855997527" MODIFIED="1339626004135" TEXT="str.center(width[, fillchar])">
<node CREATED="1339176366130" ID="ID_1422147584" MODIFIED="1339176366679" TEXT="Return centered in a string of length width. Padding is done using the specified fillchar (default is a space)."/>
</node>
<node CREATED="1339606917925" FOLDED="true" ID="ID_1585754050" MODIFIED="1339625960415" TEXT="str.ljust(width[, fillchar])">
<node CREATED="1339606928549" ID="ID_284875939" MODIFIED="1339606928970" TEXT="Return the string left justified in a string of length width. Padding is done using the specified fillchar (default is a space). The original string is returned if width is less than or equal to len(s)."/>
<node CREATED="1339607607375" ID="ID_1080226993" MODIFIED="1339607667938" TEXT="&gt;&gt;&gt; s = &quot;aoeu&quot;&#xa;&gt;&gt;&gt; print s.ljust(20)&#xa;&quot;aoeu                &quot;&#xa;&gt;&gt;&gt; s = s.ljust(20)&#xa;&gt;&gt;&gt; len(s)&#xa;&quot;20&quot;&#xa;&#xa;(You don&apos;t actually see the quotes in the repl)"/>
</node>
</node>
<node CREATED="1339626017070" FOLDED="true" ID="ID_181322023" MODIFIED="1339626403742" TEXT="Strip leading or trailing characters">
<node CREATED="1339607770504" ID="ID_1085260261" MODIFIED="1339607771037" TEXT="str.lstrip([chars])"/>
<node CREATED="1339625622048" FOLDED="true" ID="ID_1088667833" MODIFIED="1339626015781" TEXT="str.rstrip([chars])">
<node CREATED="1339625627472" ID="ID_87117948" MODIFIED="1339625627980" TEXT="Return a copy of the string with trailing characters removed. The chars argument is a string specifying the set of characters to be removed. If omitted or None, the chars argument defaults to removing whitespace. The chars argument is not a suffix; rather, all combinations of its values are stripped:"/>
<node CREATED="1339625631951" ID="ID_1854288457" MODIFIED="1339625634229" TEXT="&gt;&gt;&gt; &apos;   spacious   &apos;.rstrip()&#xa;&apos;   spacious&apos;&#xa;&gt;&gt;&gt; &apos;mississippi&apos;.rstrip(&apos;ipz&apos;)&#xa;&apos;mississ&apos;"/>
</node>
<node CREATED="1339626277533" FOLDED="true" ID="ID_490133934" MODIFIED="1339723651433" TEXT="str.strip([chars])">
<node CREATED="1339626285323" ID="ID_805243360" MODIFIED="1339626285808" TEXT="Return a copy of the string with the leading and trailing characters removed. The chars argument is a string specifying the set of characters to be removed. If omitted or None, the chars argument defaults to removing whitespace. The chars argument is not a prefix or suffix; rather, all combinations of its values are stripped:"/>
<node CREATED="1339626292010" ID="ID_482793460" MODIFIED="1339626294600" TEXT="&gt;&gt;&gt; &apos;   spacious   &apos;.strip()&#xa;&apos;spacious&apos;&#xa;&gt;&gt;&gt; &apos;www.example.com&apos;.strip(&apos;cmowz.&apos;)&#xa;&apos;example&apos;"/>
</node>
</node>
<node CREATED="1339626043461" FOLDED="true" ID="ID_214722770" MODIFIED="1339626840081" TEXT="Make uppercase, lowercase, titlecase, etc.">
<node CREATED="1339607751336" FOLDED="true" ID="ID_223391159" MODIFIED="1339607763376" TEXT="str.lower()">
<node CREATED="1339607758976" ID="ID_1761259058" MODIFIED="1339607759373" TEXT="Return a copy of the string with all the cased characters [4] converted to lowercase.  For 8-bit strings, this method is locale-dependent."/>
</node>
<node CREATED="1339176293942" FOLDED="true" ID="ID_1835640827" MODIFIED="1339176308821" TEXT="str.capitalize()">
<node CREATED="1339176307237" ID="ID_1176268152" MODIFIED="1339176308041" TEXT="Return a copy of the string with its first character capitalized and the rest lowercased.  For 8-bit strings, this method is locale-dependent."/>
</node>
<node CREATED="1339626409159" FOLDED="true" ID="ID_1460484602" MODIFIED="1339626415917" TEXT="str.swapcase()">
<node CREATED="1339626414909" ID="ID_870064210" MODIFIED="1339626415380" TEXT="Return a copy of the string with uppercase characters converted to lowercase and vice versa."/>
</node>
<node CREATED="1339626423205" FOLDED="true" ID="ID_1283430216" MODIFIED="1339626526825" TEXT="str.title()">
<node CREATED="1339626432276" ID="ID_1357603608" MODIFIED="1339626448961" TEXT="Return a titlecased version of the string where words start with an uppercase character and the remaining characters are lowercase.  The algorithm uses a simple language-independent definition of a word as groups of consecutive letters. The definition works in many contexts but it means that apostrophes in contractions and possessives form word boundaries, which may not be the desired result:&#xa;&#xa;&gt;&gt;&gt; &quot;they&apos;re bill&apos;s friends from the UK&quot;.title()&#xa;&quot;They&apos;Re Bill&apos;S Friends From The Uk&quot;"/>
<node CREATED="1339626466051" FOLDED="true" ID="ID_384223306" MODIFIED="1339626509017" TEXT="A workaround for apostrophes can be constructed using regular expressions:">
<node CREATED="1339626471058" ID="ID_1335633127" MODIFIED="1339626473560" TEXT="&gt;&gt;&gt; import re&#xa;&gt;&gt;&gt; def titlecase(s):&#xa;        return re.sub(r&quot;[A-Za-z]+(&apos;[A-Za-z]+)?&quot;,&#xa;                      lambda mo: mo.group(0)[0].upper() +&#xa;                                 mo.group(0)[1:].lower(),&#xa;                      s)&#xa;&#xa;&gt;&gt;&gt; titlecase(&quot;they&apos;re bill&apos;s friends.&quot;)&#xa;&quot;They&apos;re Bill&apos;s Friends.&quot;"/>
</node>
</node>
<node CREATED="1339626689516" FOLDED="true" ID="ID_953572949" MODIFIED="1339626704904" TEXT="str.upper()">
<node CREATED="1339626693729" ID="ID_770797734" MODIFIED="1339626694230" TEXT="Return a copy of the string with all the cased characters [4] converted to uppercase. Note that str.upper().isupper() might be False if s contains uncased characters or if the Unicode category of the resulting character(s) is not &#x201c;Lu&#x201d; (Letter, uppercase), but e.g. &#x201c;Lt&#x201d; (Letter, titlecase).  "/>
</node>
</node>
<node CREATED="1339626528280" FOLDED="true" ID="ID_1496377620" MODIFIED="1339626660195" TEXT="str.translate(table[, deletechars])">
<node CREATED="1339626554967" ID="ID_1914375251" MODIFIED="1339626555548" TEXT="Return a copy of the string where all characters occurring in the optional argument deletechars are removed, and the remaining characters have been mapped through the given translation table, which must be a string of length 256."/>
<node CREATED="1339626560254" ID="ID_1415709993" MODIFIED="1339626569788" TEXT="You can use the maketrans() helper function in the string module to create a translation table. For string objects, set the table argument to None for translations that only delete characters:&#xa;&#xa;&gt;&gt;&gt; &apos;read this short text&apos;.translate(None, &apos;aeiou&apos;)&#xa;&apos;rd ths shrt txt&apos;"/>
</node>
<node CREATED="1339626751734" FOLDED="true" ID="ID_824173307" MODIFIED="1339626763190" TEXT="str.zfill(width)">
<node CREATED="1339626758406" ID="ID_1564048084" MODIFIED="1339626758939" TEXT="Return the numeric string left filled with zeros in a string of length width. A sign prefix is handled correctly. The original string is returned if width is less than or equal to len(s)."/>
</node>
<node CREATED="1339626783517" FOLDED="true" ID="ID_1090530196" MODIFIED="1339626841120" TEXT="Unicode functions">
<node CREATED="1339626788789" FOLDED="true" ID="ID_651368919" MODIFIED="1339626795860" TEXT="unicode.isnumeric()">
<node CREATED="1339626793165" ID="ID_625579536" MODIFIED="1339626793522" TEXT="Return True if there are only numeric characters in S, False otherwise. Numeric characters include digit characters, and all characters that have the Unicode numeric value property, e.g. U+2155, VULGAR FRACTION ONE FIFTH."/>
</node>
<node CREATED="1339626803836" FOLDED="true" ID="ID_1615068208" MODIFIED="1339626811188" TEXT="unicode.isdecimal()">
<node CREATED="1339626809948" ID="ID_1886683710" MODIFIED="1339626810553" TEXT="Return True if there are only decimal characters in S, False otherwise. Decimal characters include digit characters, and all characters that can be used to form decimal-radix numbers, e.g. U+0660, ARABIC-INDIC DIGIT ZERO."/>
</node>
</node>
</node>
<node CREATED="1339609555721" FOLDED="true" ID="ID_993767351" MODIFIED="1348157992033" TEXT="String constants">
<node CREATED="1339609560984" ID="ID_1197676453" MODIFIED="1339609580324" TEXT="In the string module, use &apos;import string&apos;"/>
<node CREATED="1339609600639" FOLDED="true" ID="ID_690721128" MODIFIED="1339609649989" TEXT="string.ascii_letters">
<node CREATED="1339609608814" ID="ID_713220523" MODIFIED="1339609609171" TEXT="The concatenation of the ascii_lowercase and ascii_uppercase constants described below. This value is not locale-dependent."/>
<node CREATED="1339609645312" ID="ID_501429943" MODIFIED="1339609648610" TEXT="&gt;&gt;&gt; print string.ascii_letters&#xa;abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"/>
</node>
<node CREATED="1339609657204" FOLDED="true" ID="ID_1633869912" MODIFIED="1339609672036" TEXT="string.ascii_lowercase">
<node CREATED="1339609663580" ID="ID_1479975019" MODIFIED="1339609663968" TEXT="The lowercase letters &apos;abcdefghijklmnopqrstuvwxyz&apos;. This value is not locale-dependent and will not change."/>
</node>
<node CREATED="1339609672547" FOLDED="true" ID="ID_1811792676" MODIFIED="1339609679947" TEXT="string.ascii_uppercase">
<node CREATED="1339609677682" ID="ID_79966062" MODIFIED="1339609678056" TEXT="The uppercase letters &apos;ABCDEFGHIJKLMNOPQRSTUVWXYZ&apos;. This value is not locale-dependent and will not change."/>
</node>
<node CREATED="1339609686563" FOLDED="true" ID="ID_1739173089" MODIFIED="1339609693651" TEXT="string.digits">
<node CREATED="1339609692682" ID="ID_1218549702" MODIFIED="1339609693063" TEXT="The string &apos;0123456789&apos;."/>
</node>
<node CREATED="1339609698329" FOLDED="true" ID="ID_1884514769" MODIFIED="1339609704082" TEXT="string.hexdigits">
<node CREATED="1339609703034" ID="ID_561994126" MODIFIED="1339609703527" TEXT="The string &apos;0123456789abcdefABCDEF&apos;."/>
</node>
<node CREATED="1339609772263" FOLDED="true" ID="ID_231540415" MODIFIED="1339609779863" TEXT="string.octdigits">
<node CREATED="1339609778519" ID="ID_911288108" MODIFIED="1339609778947" TEXT="The string &apos;01234567&apos;."/>
</node>
<node CREATED="1339609786894" FOLDED="true" ID="ID_1739723318" MODIFIED="1339609820773" TEXT="string.punctuation">
<node CREATED="1339609792701" ID="ID_661240418" MODIFIED="1339609801410" TEXT="String of ASCII characters which are considered punctuation characters in the C locale."/>
<node CREATED="1339609817029" ID="ID_318874651" MODIFIED="1339609819355" TEXT="&gt;&gt;&gt; print string.punctuation&#xa;!&quot;#$%&amp;&apos;()*+,-./:;&lt;=&gt;?@[\]^_`{|}~"/>
</node>
<node CREATED="1339609830716" FOLDED="true" ID="ID_1612204696" MODIFIED="1339609903530" TEXT="string.printable">
<node CREATED="1339609836988" ID="ID_707364457" MODIFIED="1339609837537" TEXT="String of characters which are considered printable. This is a combination of digits, letters, punctuation, and whitespace."/>
<node CREATED="1339609849747" ID="ID_1372898388" MODIFIED="1339609899319" TEXT="&gt;&gt;&gt; print string.printable&#xa;0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!&quot;#$%&amp;&apos;()*+,-./:;&lt;=&gt;?@[\]^_`{|}~"/>
</node>
<node CREATED="1339609935328" FOLDED="true" ID="ID_1784250133" MODIFIED="1339609981283" TEXT="string.whitespace">
<node CREATED="1339609950919" ID="ID_398132014" MODIFIED="1339609952468" TEXT="A string containing all characters that are considered whitespace. On most systems this includes the characters space, tab, linefeed, return, formfeed, and vertical tab."/>
</node>
<node CREATED="1339609708706" FOLDED="true" ID="ID_1413833458" MODIFIED="1339609994428" TEXT="string.letters (locale dependent)">
<node CREATED="1339609718017" ID="ID_919106981" MODIFIED="1339609718422" TEXT="The concatenation of the strings lowercase and uppercase described below. The specific value is locale-dependent, and will be updated when locale.setlocale() is called."/>
</node>
<node CREATED="1339609736809" FOLDED="true" ID="ID_1300805053" MODIFIED="1339609994423" TEXT="string.lowercase (locale dependent)">
<node CREATED="1339609743496" ID="ID_528405453" MODIFIED="1339609744397" TEXT="A string containing all the characters that are considered lowercase letters. On most systems this is the string &apos;abcdefghijklmnopqrstuvwxyz&apos;. The specific value is locale-dependent, and will be updated when locale.setlocale() is called."/>
</node>
<node CREATED="1339609914585" FOLDED="true" ID="ID_1734707561" MODIFIED="1339609996556" TEXT="string.uppercase (locale dependent)">
<node CREATED="1339609922328" ID="ID_1859245712" MODIFIED="1339609925694" TEXT="A string containing all the characters that are considered uppercase letters. On most systems this is the string &apos;ABCDEFGHIJKLMNOPQRSTUVWXYZ&apos;. The specific value is locale-dependent, and will be updated when locale.setlocale() is called."/>
</node>
</node>
<node CREATED="1339618204776" FOLDED="true" ID="ID_1379813164" MODIFIED="1342030106363" TEXT="String functions (capwords &amp; maketrans)">
<node CREATED="1339618216024" FOLDED="true" ID="ID_810826199" MODIFIED="1339626644897" TEXT="string.capwords(s[, sep])">
<node CREATED="1339618221175" ID="ID_1272199314" MODIFIED="1339618224213" TEXT="Split the argument into words using str.split(), capitalize each word using str.capitalize(), and join the capitalized words using str.join(). If the optional second argument sep is absent or None, runs of whitespace characters are replaced by a single space and leading and trailing whitespace are removed, otherwise sep is used to split and join the words."/>
<node CREATED="1339618305230" ID="ID_557538666" MODIFIED="1339618309113" TEXT="&gt;&gt;&gt; s = &quot;aoeu aou aoeu&quot;&#xa;&gt;&gt;&gt; print string.capwords(s)&#xa;Aoeu Aou Aoeu"/>
<node CREATED="1339618449453" ID="ID_1409531218" MODIFIED="1339618452555" TEXT="&gt;&gt;&gt; s = &quot;aoeu aou ao*eu&quot;&#xa;&gt;&gt;&gt; print string.capwords(s, &apos;*&apos;)&#xa;Aoeu aou ao*Eu"/>
</node>
<node CREATED="1339618229598" FOLDED="true" ID="ID_880707440" MODIFIED="1340143834965" TEXT="string.maketrans(from, to)">
<node CREATED="1339618234303" ID="ID_61502051" MODIFIED="1339618234972" TEXT="Return a translation table suitable for passing to translate(), that will map each character in from into the character at the same position in to; from and to must have the same length.  "/>
<node CREATED="1339618251062" ID="ID_1822073624" MODIFIED="1339618259155" TEXT="Note: Don&#x2019;t use strings derived from lowercase and uppercase as arguments; in some locales, these don&#x2019;t have the same length. For case conversions, always use str.lower() and str.upper()."/>
<node CREATED="1335729239964" FOLDED="true" ID="ID_98578960" MODIFIED="1340142263327" TEXT="String translations">
<node CREATED="1335729244116" ID="ID_41787532" MODIFIED="1335729414034" TEXT="import string&#xa;&#xa;table = string.maketrans(&apos;ABC&apos;, &apos;123&apos;)&#xa;f = &apos;A + B == C&apos;&#xa;result = f.translate(table) -&gt; &apos;1 + 2 == 3&apos;"/>
<node CREATED="1335729394869" ID="ID_335288008" MODIFIED="1335729419561" TEXT="eval(result) -&gt; True"/>
</node>
</node>
</node>
<node CREATED="1339617799163" FOLDED="true" ID="ID_1557445038" MODIFIED="1340252681448" TEXT="Template strings">
<node CREATED="1339617871735" ID="ID_22570534" MODIFIED="1339617905229" TEXT="A new and easier way of doing %-based string substitution"/>
<node CREATED="1339617913845" FOLDED="true" ID="ID_407933674" MODIFIED="1339645234259" TEXT="Templates support $-based substitutions, using the following rules">
<node CREATED="1339617920837" ID="ID_1425510763" MODIFIED="1339617921330" TEXT="$$ is an escape; it is replaced with a single $."/>
<node CREATED="1339617926572" ID="ID_404324956" MODIFIED="1339617927146" TEXT="$identifier names a substitution placeholder matching a mapping key of &quot;identifier&quot;. By default, &quot;identifier&quot; must spell a Python identifier. The first non-identifier character after the $ character terminates this placeholder specification."/>
<node CREATED="1339617933012" ID="ID_1169096833" MODIFIED="1339617933530" TEXT="${identifier} is equivalent to $identifier. It is required when valid identifier characters follow the placeholder but are not part of the placeholder, such as &quot;${noun}ification&quot;."/>
<node CREATED="1339617951411" ID="ID_449691231" MODIFIED="1339617951825" TEXT="Any other appearance of $ in the string will result in a ValueError being raised."/>
</node>
<node CREATED="1339617975706" FOLDED="true" ID="ID_563719138" MODIFIED="1339645401628" TEXT="substitute(mapping[, **kws])">
<node CREATED="1339617990074" ID="ID_1046298234" MODIFIED="1339645397052" TEXT="This method returns a new string which results when the values of a mapping are substituted for the placeholders in the Template.  If there are placeholders which are not present in the mapping, a KeyError will be raised."/>
<node CREATED="1339645398964" ID="ID_1349246573" MODIFIED="1339645399553" TEXT="Performs the template substitution, returning a new string. mapping is any dictionary-like object with keys that match the placeholders in the template. Alternatively, you can provide keyword arguments, where the keywords are the placeholders. When both mapping and kws are given and there are duplicates, the placeholders from kws take precedence."/>
</node>
<node CREATED="1339617998809" FOLDED="true" ID="ID_1689396751" MODIFIED="1339645424819" TEXT="safe_substitute(mapping[, **kws])">
<node CREATED="1339617999889" ID="ID_1112089607" MODIFIED="1339618010038" TEXT="Like substitute(), except that if placeholders are missing from mapping and kws, instead of raising a KeyError exception, the original placeholder will appear in the resulting string intact. Also, unlike with substitute(), any other appearances of the $ will simply return $ instead of raising ValueError.&#xa;&#xa;While other exceptions may still occur, this method is called &#x201c;safe&#x201d; because substitutions always tries to return a usable string instead of raising an exception. In another sense, safe_substitute() may be anything other than safe, since it will silently ignore malformed templates containing dangling delimiters, unmatched braces, or placeholders that are not valid Python identifiers."/>
</node>
<node CREATED="1339617817297" FOLDED="true" ID="ID_9157740" MODIFIED="1339645281105" TEXT="Examples of how to use">
<node CREATED="1339617822169" ID="ID_866464138" MODIFIED="1339617824614" TEXT="&gt;&gt;&gt; from string import Template&#xa;&gt;&gt;&gt; s = Template(&apos;$who likes $what&apos;)&#xa;&gt;&gt;&gt; s.substitute(who=&apos;tim&apos;, what=&apos;kung pao&apos;)&#xa;&apos;tim likes kung pao&apos;&#xa;&gt;&gt;&gt; d = dict(who=&apos;tim&apos;)&#xa;&gt;&gt;&gt; Template(&apos;Give $who $100&apos;).substitute(d)&#xa;Traceback (most recent call last):&#xa;[...]&#xa;ValueError: Invalid placeholder in string: line 1, col 10&#xa;&gt;&gt;&gt; Template(&apos;$who likes $what&apos;).substitute(d)&#xa;Traceback (most recent call last):&#xa;[...]&#xa;KeyError: &apos;what&apos;&#xa;&gt;&gt;&gt; Template(&apos;$who likes $what&apos;).safe_substitute(d)&#xa;&apos;tim likes $what&apos;"/>
</node>
<node CREATED="1339617961035" FOLDED="true" ID="ID_354384922" MODIFIED="1339645535295" TEXT="class string.Template(template)">
<node CREATED="1339617967379" ID="ID_1776866762" MODIFIED="1339617967936" TEXT="The constructor takes a single argument which is the template string.  "/>
<node CREATED="1339645512591" ID="ID_409521222" MODIFIED="1339645530910" TEXT="The signature of substitute() and safe_substitute() allows for passing the mapping of placeholders to values, either as a single dictionary-like object in the first positional argument, or as keyword arguments as shown above. The exact details and signatures of these two methods is reserved for the standard library documentation."/>
</node>
<node CREATED="1339618152274" FOLDED="true" ID="ID_1205694998" MODIFIED="1339645308736" TEXT="Advanced usage">
<node CREATED="1339618154753" ID="ID_1660966113" MODIFIED="1339618155146" TEXT="http://docs.python.org/library/string.html#string.Template.template"/>
</node>
</node>
<node CREATED="1339019430602" FOLDED="true" ID="ID_457150461" MODIFIED="1340251135720" TEXT="String formatting with %s">
<node CREATED="1339631719191" ID="ID_1956878206" MODIFIED="1339631733841" TEXT="Not recommended, as it&apos;s deprecated in 3.1"/>
<node CREATED="1339020958959" FOLDED="true" ID="ID_1002894165" MODIFIED="1339631647552" TEXT="conversion types">
<node CREATED="1339123825318" ID="ID_390220238" MODIFIED="1339123842786" TEXT="###Alternate forms contained in child nodes"/>
<node CREATED="1339021151383" FOLDED="true" ID="ID_1130446727" MODIFIED="1339123986760" TEXT="%s - String (converts any Python object using repr()).">
<node CREATED="1339123969583" ID="ID_754458688" MODIFIED="1339123970148" TEXT="If the object or format provided is a unicode string, the resulting string will also be unicode.  The precision determines the maximal number of characters used."/>
</node>
<node CREATED="1339021163303" FOLDED="true" ID="ID_1530701596" MODIFIED="1339123960434" TEXT="%r - String (converts any Python object using str()).">
<node CREATED="1339123952056" ID="ID_1360873195" MODIFIED="1339123959313" TEXT="The precision determines the maximal number of characters used."/>
</node>
<node CREATED="1339020964248" ID="ID_416660447" MODIFIED="1339021084031" TEXT="%d (%i)- Signed integer decimal."/>
<node CREATED="1339020992150" FOLDED="true" ID="ID_300994511" MODIFIED="1339021520896" TEXT="%o - Signed octal value. ">
<node CREATED="1339021519264" ID="ID_1915811949" MODIFIED="1339021519813" TEXT="The alternate form causes a leading zero (&apos;0&apos;) to be inserted between left-hand padding and the formatting of the number if the leading character of the result is not already a zero."/>
</node>
<node CREATED="1339021004150" FOLDED="true" ID="ID_501770600" MODIFIED="1339123845589" TEXT="%x - Signed hexadecimal (lowercase)">
<node CREATED="1339123816006" ID="ID_1445792522" MODIFIED="1339123816779" TEXT="The alternate form causes a leading &apos;0x&apos; or &apos;0X&apos; (depending on whether the &apos;x&apos; or &apos;X&apos; format was used) to be inserted between left-hand padding and the formatting of the number if the leading character of the result is not already a zero."/>
</node>
<node CREATED="1339021020221" FOLDED="true" ID="ID_695615752" MODIFIED="1339123845805" TEXT="%X - Signed hexadecimal (uppercase)">
<node CREATED="1339123819014" ID="ID_414918903" MODIFIED="1339123819403" TEXT="The alternate form causes a leading &apos;0x&apos; or &apos;0X&apos; (depending on whether the &apos;x&apos; or &apos;X&apos; format was used) to be inserted between left-hand padding and the formatting of the number if the leading character of the result is not already a zero."/>
</node>
<node CREATED="1339021030477" FOLDED="true" ID="ID_1407839909" MODIFIED="1339123868780" TEXT="%e - Floating point exponential format (lowercase)">
<node CREATED="1339123866627" ID="ID_1702213990" MODIFIED="1339123867833" TEXT="The alternate form causes the result to always contain a decimal point, even if no digits follow it.  The precision determines the number of digits after the decimal point and defaults to 6."/>
</node>
<node CREATED="1339021046556" FOLDED="true" ID="ID_816936946" MODIFIED="1339123871116" TEXT="%E - Floating point exponential format (uppercase)">
<node CREATED="1339123869564" ID="ID_1645728590" MODIFIED="1339123870345" TEXT="The alternate form causes the result to always contain a decimal point, even if no digits follow it.  The precision determines the number of digits after the decimal point and defaults to 6."/>
</node>
<node CREATED="1339021060931" FOLDED="true" ID="ID_1232007460" MODIFIED="1339123927110" TEXT="(%f | %F) - Floating point decimal format">
<node CREATED="1339123871804" ID="ID_1648721117" MODIFIED="1339123872544" TEXT="The alternate form causes the result to always contain a decimal point, even if no digits follow it.  The precision determines the number of digits after the decimal point and defaults to 6."/>
</node>
<node CREATED="1339021099026" FOLDED="true" ID="ID_445017184" MODIFIED="1339123917387" TEXT="(%g | %G) - Floating point format. Uses lowercase exponential format if exponent is less than -4 or not less than precision, decimal format otherwise.">
<node CREATED="1339123892539" ID="ID_678129660" MODIFIED="1339123893064" TEXT="The alternate form causes the result to always contain a decimal point, and trailing zeroes are not removed as they would otherwise be.  The precision determines the number of significant digits before and after the decimal point and defaults to 6."/>
</node>
<node CREATED="1339021140424" ID="ID_1547035665" MODIFIED="1339021143212" TEXT="%c - Single character (accepts integer or single character string)."/>
<node CREATED="1339124234100" FOLDED="true" ID="ID_792575322" MODIFIED="1339124368170" TEXT="%% - No argument is converted, results in a &apos;%&apos; character in the result.">
<node CREATED="1339124346551" ID="ID_925284383" MODIFIED="1339124358424" TEXT="&gt;&gt;&gt; s = &quot;test %% %s&quot; % &quot;hello&quot;&#xa;&gt;&gt;&gt; print s&#xa;test % hello"/>
</node>
</node>
<node CREATED="1339124136856" FOLDED="true" ID="ID_1165870214" MODIFIED="1339630427739" TEXT="How to use">
<node CREATED="1339124140640" ID="ID_261494550" MODIFIED="1339124184512" TEXT="If format requires a single argument, values may be a single non-tuple object. [5] Otherwise, values must be a tuple with exactly the number of items specified by the format string, or a single mapping object (for example, a dictionary).&#xa;&#xa;A conversion specifier contains two or more characters and has the following components, which must occur in this order:&#xa;&#xa;1. The &apos;%&apos; character, which marks the start of the specifier.&#xa;2. Mapping key (optional), consisting of a parenthesised sequence of characters (for example, (somename)).&#xa;3. Conversion flags (optional), which affect the result of some conversion types.&#xa;4. Minimum field width (optional). If specified as an &apos;*&apos; (asterisk), the actual width is read from the next element of the tuple in values, and the object to convert comes after the minimum field width and optional precision.&#xa;5. Precision (optional), given as a &apos;.&apos; (dot) followed by the precision. If specified as &apos;*&apos; (an asterisk), the actual width is read from the next element of the tuple in values, and the value to convert comes after the precision.&#xa;6. Length modifier (optional).&#xa;7. Conversion type."/>
<node CREATED="1339019439122" ID="ID_1562106027" MODIFIED="1339019447714" TEXT="When the right argument is a dictionary (or other mapping type), then the formats in the string must include a parenthesised mapping key into that dictionary inserted immediately after the &apos;%&apos; character. The mapping key selects the value to be formatted from the mapping. For example:&#xa;&#xa;&gt;&gt;&gt; print &apos;%(language)s has %(number)03d quote types.&apos; % \&#xa;...       {&quot;language&quot;: &quot;Python&quot;, &quot;number&quot;: 2}&#xa;Python has 002 quote types."/>
</node>
<node CREATED="1339021378334" FOLDED="true" ID="ID_657692191" MODIFIED="1339630426331" TEXT="Flags">
<node CREATED="1339021379846" ID="ID_1787388252" MODIFIED="1339021437981" TEXT="# - use alternate form of value conversion"/>
<node CREATED="1339124042164" ID="ID_1953622601" MODIFIED="1339124043617" TEXT="0 - The conversion will be zero padded for numeric values."/>
<node CREATED="1339124050572" ID="ID_1043349306" MODIFIED="1339124064904" TEXT="-  :The converted value is left adjusted (overrides the &apos;0&apos; conversion if both are given)."/>
<node CREATED="1339124073507" ID="ID_849498884" MODIFIED="1339124076368" TEXT="&apos; &apos; - (a space) A blank should be left before a positive number (or empty string) produced by a signed conversion."/>
<node CREATED="1339124085690" ID="ID_624378920" MODIFIED="1339124088335" TEXT="+ - A sign character (&apos;+&apos; or &apos;-&apos;) will precede the conversion (overrides a &#x201c;space&#x201d; flag)."/>
</node>
</node>
</node>
<node CREATED="1339709337897" FOLDED="true" ID="ID_260065304" MODIFIED="1348157987223" TEXT="Variable scopes">
<node CREATED="1339709357703" ID="ID_1882510395" MODIFIED="1339709384269" TEXT="At any time during execution, there are at least three nested scopes whose namespaces are directly accessible:&#xa;&#xa;- the innermost scope, which is searched first, contains the local names&#xa;- the scopes of any enclosing functions, which are searched starting with the nearest enclosing scope, contains non-local, but also non-global names&#xa;- the next-to-last scope contains the current module&#x2019;s global names&#xa;- the outermost scope (searched last) is the namespace containing built-in names"/>
<node CREATED="1339709395662" ID="ID_1357784426" MODIFIED="1339709396351" TEXT="If a name is declared global, then all references and assignments go directly to the middle scope containing the module&#x2019;s global names. Otherwise, all variables found outside of the innermost scope are read-only (an attempt to write to such a variable will simply create a new local variable in the innermost scope, leaving the identically named outer variable unchanged).  "/>
<node CREATED="1339709776645" ID="ID_980406899" MODIFIED="1339709777706" TEXT="It is important to realize that scopes are determined textually: the global scope of a function defined in a module is that module&#x2019;s namespace, no matter from where or by what alias the function is called. On the other hand, the actual search for names is done dynamically, at run time &#x2014; however, the language definition is evolving towards static name resolution, at &#x201c;compile&#x201d; time, so don&#x2019;t rely on dynamic name resolution! (In fact, local variables are already determined statically.)"/>
<node CREATED="1339709830059" ID="ID_389981758" MODIFIED="1339709830616" TEXT="A special quirk of Python is that &#x2013; if no global statement is in effect &#x2013; assignments to names always go into the innermost scope. Assignments do not copy data &#x2014; they just bind names to objects. The same is true for deletions: the statement del x removes the binding of x from the namespace referenced by the local scope. In fact, all operations that introduce new names use the local scope: in particular, import statements and function definitions bind the module or function name in the local scope. (The global statement can be used to indicate that particular variables live in the global scope.)"/>
</node>
<node CREATED="1340146338830" FOLDED="true" ID="ID_1807904329" MODIFIED="1348188026556" TEXT="Built-in Functions">
<node CREATED="1340587192950" FOLDED="true" ID="ID_956768014" MODIFIED="1342717322899" TEXT="Map, Filter, Reduce">
<node CREATED="1340308504393" FOLDED="true" ID="ID_8093959" MODIFIED="1342717320827" TEXT="map(function, iterable, ...)">
<node CREATED="1340308536792" ID="ID_1503318820" MODIFIED="1340308548264" TEXT="Apply function to every item of iterable and return a list of the results. If additional iterable arguments are passed, function must take that many arguments and is applied to the items from all iterables in parallel. If one iterable is shorter than another it is assumed to be extended with None items."/>
<node CREATED="1340308549567" ID="ID_889552600" MODIFIED="1340308550031" TEXT="If function is None, the identity function is assumed; if there are multiple arguments, map() returns a list consisting of tuples containing the corresponding items from all iterables (a kind of transpose operation). The iterable arguments may be a sequence or any iterable object; the result is always a list."/>
<node CREATED="1340308729288" ID="ID_295637323" MODIFIED="1340308733224" TEXT="&gt;&gt;&gt; map(lambda x: x*2, [1, 2, 3])&#xa;[2, 4, 6]"/>
</node>
<node CREATED="1340252260458" FOLDED="true" ID="ID_783112857" MODIFIED="1340587189699" TEXT="filter(function, iterable)">
<node CREATED="1340252268538" ID="ID_1085769075" MODIFIED="1340252269312" TEXT="Construct a list from those elements of iterable for which function returns true. iterable may be either a sequence, a container which supports iteration, or an iterator. If iterable is a string or a tuple, the result also has that type; otherwise it is always a list. If function is None, the identity function is assumed, that is, all elements of iterable that are false are removed."/>
<node CREATED="1340252354446" ID="ID_33892217" MODIFIED="1340252357388" TEXT="Note that filter(function, iterable) is equivalent to [item for item in iterable if function(item)] if function is not None and [item for item in iterable if item] if function is None.&#xa;&#xa;See itertools.ifilter() and itertools.ifilterfalse() for iterator versions of this function, including a variation that filters for elements where the function returns false."/>
<node CREATED="1340577967875" ID="ID_1598205392" MODIFIED="1340577971494" TEXT="&gt;&gt;&gt; filter(lambda x: x % 2, [1, 2, 3])&#xa;[1, 3]"/>
<node CREATED="1340579478471" ID="ID_660934526" MODIFIED="1340579482755" TEXT="&gt;&gt;&gt; filter(lambda x: not x % 2, [1, 2, 3])&#xa;[2]"/>
</node>
<node CREATED="1340594598258" FOLDED="true" ID="ID_980407092" MODIFIED="1342717300698" TEXT="reduce(function, iterable[, initializer])">
<node CREATED="1340594651496" ID="ID_912214475" MODIFIED="1340594652455" TEXT="Apply function of two arguments cumulatively to the items of iterable, from left to right, so as to reduce the iterable to a single value. For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates ((((1+2)+3)+4)+5). The left argument, x, is the accumulated value and the right argument, y, is the update value from the iterable. If the optional initializer is present, it is placed before the items of the iterable in the calculation, and serves as a default when the iterable is empty. If initializer is not given and iterable contains only one item, the first item is returned."/>
<node CREATED="1340594659272" ID="ID_1171864374" MODIFIED="1340594663020" TEXT="Roughly equivalent to:&#xa;&#xa;def reduce(function, iterable, initializer=None):&#xa;    it = iter(iterable)&#xa;    if initializer is None:&#xa;        try:&#xa;            initializer = next(it)&#xa;        except StopIteration:&#xa;            raise TypeError(&apos;reduce() of empty sequence with no initial value&apos;)&#xa;    accum_value = initializer&#xa;    for x in iterable:&#xa;        accum_value = function(accum_value, x)&#xa;    return accum_value"/>
</node>
</node>
<node CREATED="1340592850855" FOLDED="true" ID="ID_1160694567" MODIFIED="1342722743354" TEXT="Numeric types">
<node CREATED="1340227075444" FOLDED="true" ID="ID_1378135208" MODIFIED="1340592933588" TEXT="bin(x)">
<node CREATED="1340227082092" ID="ID_1970317894" MODIFIED="1340227082636" TEXT="Convert an integer number to a binary string. The result is a valid Python expression. If x is not a Python int object, it has to define an __index__() method that returns an integer."/>
<node CREATED="1340227158305" ID="ID_1366894207" MODIFIED="1340227160985" TEXT="&gt;&gt;&gt; x = 12&#xa;&gt;&gt;&gt; bin(x)&#xa;&apos;0b1100&apos;"/>
</node>
<node CREATED="1340227170976" FOLDED="true" ID="ID_251056358" MODIFIED="1340592933580" TEXT="bool([x])">
<node CREATED="1340227180840" ID="ID_1663428228" MODIFIED="1340227181262" TEXT="Convert a value to a Boolean, using the standard truth testing procedure. If x is false or omitted, this returns False; otherwise it returns True. bool is also a class, which is a subclass of int. Class bool cannot be subclassed further. Its only instances are False and True."/>
<node CREATED="1340227206086" ID="ID_1103043929" MODIFIED="1340227209271" TEXT="&gt;&gt;&gt; x = 12&#xa;&gt;&gt;&gt; bool(x)&#xa;True&#xa;&gt;&gt;&gt; y = &quot;&quot;&#xa;&gt;&gt;&gt; bool(y)&#xa;False"/>
</node>
<node CREATED="1340252396340" FOLDED="true" ID="ID_1835125441" MODIFIED="1340592936818" TEXT="float([x])">
<node CREATED="1340252403227" ID="ID_1049852447" MODIFIED="1340252403915" TEXT="Convert a string or a number to floating point. If the argument is a string, it must contain a possibly signed decimal or floating point number, possibly embedded in whitespace. The argument may also be [+|-]nan or [+|-]inf. Otherwise, the argument may be a plain or long integer or a floating point number, and a floating point number with the same value (within Python&#x2019;s floating point precision) is returned. If no argument is given, returns 0.0."/>
<node CREATED="1340252469526" ID="ID_1187598269" MODIFIED="1340252471192" TEXT="Note When passing in a string, values for NaN and Infinity may be returned, depending on the underlying C library. Float accepts the strings nan, inf and -inf for NaN and positive or negative infinity. The case and a leading + are ignored as well as a leading - is ignored for NaN. Float always represents NaN and infinity as nan, inf or -inf."/>
</node>
<node CREATED="1340253340395" FOLDED="true" ID="ID_698002507" MODIFIED="1340592938305" TEXT="hex(x)">
<node CREATED="1340253349436" ID="ID_224925086" MODIFIED="1340253350186" TEXT="Convert an integer number (of any size) to a hexadecimal string. The result is a valid Python expression."/>
<node CREATED="1340253362075" ID="ID_660447352" MODIFIED="1340253362738" TEXT="Note To obtain a hexadecimal string representation for a float, use the float.hex() method."/>
<node CREATED="1340253380530" ID="ID_7806134" MODIFIED="1340253384984" TEXT="&gt;&gt;&gt; hex(1234)&#xa;&apos;0x4d2&apos;"/>
</node>
<node CREATED="1340308367398" FOLDED="true" ID="ID_1467329632" MODIFIED="1340592940769" TEXT="long([x[, base]])">
<node CREATED="1340308373694" ID="ID_1359786707" MODIFIED="1340308376079" TEXT="Convert a string or number to a long integer. If the argument is a string, it must contain a possibly signed number of arbitrary size, possibly embedded in whitespace. The base argument is interpreted in the same way as for int(), and may only be given when x is a string. Otherwise, the argument may be a plain or long integer or a floating point number, and a long integer with the same value is returned. Conversion of floating point numbers to integers truncates (towards zero). If no arguments are given, returns 0L."/>
<node CREATED="1340308386294" ID="ID_1113700064" MODIFIED="1340308386936" TEXT="The long type is described in Numeric Types &#x2014; int, float, long, complex."/>
<node CREATED="1340308457371" ID="ID_555822668" MODIFIED="1340308506882" TEXT="No longer exists in 3.0"/>
<node CREATED="1340308515577" ID="ID_635489760" MODIFIED="1340308516160" TEXT="http://www.python.org/dev/peps/pep-0237/"/>
</node>
<node CREATED="1340592837016" FOLDED="true" ID="ID_1641397023" MODIFIED="1340592861475" TEXT="oct(x)">
<node CREATED="1340592848839" ID="ID_58435569" MODIFIED="1340592849622" TEXT="Convert an integer number (of any size) to an octal string. The result is a valid Python expression."/>
</node>
<node CREATED="1340297565753" FOLDED="true" ID="ID_247996622" MODIFIED="1340596949696" TEXT="int([x[, base]])">
<node CREATED="1340297608424" ID="ID_336037921" MODIFIED="1340297608871" TEXT="Convert a string or number to a plain integer. If the argument is a string, it must contain a possibly signed decimal number representable as a Python integer, possibly embedded in whitespace."/>
<node CREATED="1340297639918" ID="ID_8011855" MODIFIED="1340297640421" TEXT="The base parameter gives the base for the conversion (which is 10 by default) and may be any integer in the range [2, 36], or zero. If base is zero, the proper radix is determined based on the contents of string; the interpretation is the same as for integer literals. "/>
<node CREATED="1340297667293" ID="ID_1427945670" MODIFIED="1340297668444" TEXT="If base is specified and x is not a string, TypeError is raised. Otherwise, the argument may be a plain or long integer or a floating point number. Conversion of floating point numbers to integers truncates (towards zero). If the argument is outside the integer range a long object will be returned instead. If no arguments are given, returns 0."/>
<node CREATED="1340297686332" ID="ID_1390928777" MODIFIED="1340297689485" TEXT="&gt;&gt;&gt; int(3.6)&#xa;3"/>
</node>
<node CREATED="1340245980085" FOLDED="true" ID="ID_115282600" MODIFIED="1340597022508" TEXT="complex([real[, imag]])">
<node CREATED="1340245986358" ID="ID_1653973790" MODIFIED="1340245986980" TEXT="Create a complex number with the value real + imag*j or convert a string or number to a complex number. If the first parameter is a string, it will be interpreted as a complex number and the function must be called without a second parameter. The second parameter can never be a string. Each argument may be any numeric type (including complex). If imag is omitted, it defaults to zero and the function serves as a numeric conversion function like int(), long() and float(). If both arguments are omitted, returns 0j."/>
<node CREATED="1340245999587" ID="ID_1291298416" MODIFIED="1340246000233" TEXT="Note When converting from a string, the string must not contain whitespace around the central + or - operator. For example, complex(&apos;1+2j&apos;) is fine, but complex(&apos;1 + 2j&apos;) raises ValueError."/>
<node CREATED="1340246055128" ID="ID_450808774" MODIFIED="1340246059006" TEXT="&gt;&gt;&gt; complex(&apos;3-2.5j&apos;)&#xa;(3-2.5j)"/>
</node>
</node>
<node CREATED="1340598695458" FOLDED="true" ID="ID_1699440112" MODIFIED="1342722745081" TEXT="Set, Frozenset, Iter, Next, Xrange, Range">
<node CREATED="1340597521354" FOLDED="true" ID="ID_453740352" MODIFIED="1340598631430" TEXT="Set &amp; Frozenset">
<node CREATED="1340595258861" FOLDED="true" ID="ID_71766461" MODIFIED="1340598612698" TEXT="set([iterable])">
<node CREATED="1340595267445" ID="ID_1372270533" MODIFIED="1340595271964" TEXT="Return a new set, optionally with elements taken from iterable. The set type is described in Set Types &#x2014; set, frozenset."/>
</node>
<node CREATED="1340252699574" FOLDED="true" ID="ID_1938509176" MODIFIED="1340598614586" TEXT="frozenset([iterable])">
<node CREATED="1340252706367" ID="ID_443909586" MODIFIED="1340252709637" TEXT="Return a frozenset object, optionally with elements taken from iterable. The frozenset type is described in Set Types &#x2014; set, frozenset.&#xa;&#xa;For other containers see the built in dict, list, and tuple classes, and the collections module."/>
</node>
</node>
<node CREATED="1340592692931" FOLDED="true" ID="ID_397414485" MODIFIED="1340598631436" TEXT="Iter &amp; Next">
<node CREATED="1340301001961" FOLDED="true" ID="ID_977344477" MODIFIED="1340598608114" TEXT="iter(o[, sentinel])">
<node CREATED="1340303294018" ID="ID_759958829" MODIFIED="1340303294954" TEXT="Return an iterator object. The first argument is interpreted very differently depending on the presence of the second argument. Without a second argument, o must be a collection object which supports the iteration protocol (the __iter__() method), or it must support the sequence protocol (the __getitem__() method with integer arguments starting at 0). If it does not support either of those protocols, TypeError is raised."/>
<node CREATED="1340303468203" ID="ID_1779015656" MODIFIED="1340303469415" TEXT="If the second argument, sentinel, is given, then o must be a callable object. The iterator created in this case will call o with no arguments for each call to its next() method; if the value returned is equal to sentinel, StopIteration will be raised, otherwise the value will be returned."/>
<node CREATED="1340303498451" ID="ID_175250263" MODIFIED="1340303502472" TEXT="One useful application of the second form of iter() is to read lines of a file until a certain line is reached. The following example reads a file until the readline() method returns an empty string:&#xa;&#xa;with open(&apos;mydata.txt&apos;) as fp:&#xa;    for line in iter(fp.readline, &apos;&apos;):&#xa;        process_line(line)"/>
<node CREATED="1340303385015" ID="ID_750865477" MODIFIED="1340304819276" TEXT="&gt;&gt;&gt; l = [1, 2, 3]&#xa;&gt;&gt;&gt; dir(l)&#x9;&#x9;#has __getitem__&#xa;[&apos;__add__&apos;, &apos;__class__&apos;, &apos;__contains__&apos;, &apos;__delattr__&apos;, &apos;__delitem__&apos;, &apos;__del&#xa;slice__&apos;, &apos;__doc__&apos;, &apos;__eq__&apos;, &apos;__format__&apos;, &apos;__ge__&apos;, &apos;__getattribute__&apos;, &apos;_&#xa;_getitem__&apos;, &apos;__getslice__&apos;, &apos;__gt__&apos;, &apos;__hash__&apos;, &apos;__iadd__&apos;, &apos;__imul__&apos;, &apos;_&#xa;_init__&apos;, &apos;__iter__&apos;, &apos;__le__&apos;, &apos;__len__&apos;, &apos;__lt__&apos;, &apos;__mul__&apos;, &apos;__ne__&apos;, &apos;__&#xa;new__&apos;, &apos;__reduce__&apos;, &apos;__reduce_ex__&apos;, &apos;__repr__&apos;, &apos;__reversed__&apos;, &apos;__rmul__&apos;&#xa;, &apos;__setattr__&apos;, &apos;__setitem__&apos;, &apos;__setslice__&apos;, &apos;__sizeof__&apos;, &apos;__str__&apos;, &apos;__s&#xa;ubclasshook__&apos;, &apos;append&apos;, &apos;count&apos;, &apos;extend&apos;, &apos;index&apos;, &apos;insert&apos;, &apos;pop&apos;, &apos;remov&#xa;e&apos;, &apos;reverse&apos;, &apos;sort&apos;]&#xa;&#xa;&gt;&gt;&gt; l = iter(l)&#xa;&gt;&gt;&gt; l.next()&#xa;1&#xa;&gt;&gt;&gt; l.next()&#xa;2&#xa;&gt;&gt;&gt; l.next()&#xa;3&#xa;&gt;&gt;&gt; l.next()&#xa;Traceback (most recent call last):&#xa;  File &quot;&lt;input&gt;&quot;, line 1, in &lt;module&gt;&#xa;StopIteration"/>
</node>
<node CREATED="1340592358094" FOLDED="true" ID="ID_893455532" MODIFIED="1340598606298" TEXT="next(iterator[, default])">
<node CREATED="1340592364005" ID="ID_1737796079" MODIFIED="1340592364908" TEXT="Retrieve the next item from the iterator by calling its next() method. If default is given, it is returned if the iterator is exhausted, otherwise StopIteration is raised."/>
</node>
</node>
<node CREATED="1340597305035" FOLDED="true" ID="ID_1027677669" MODIFIED="1340598643346" TEXT="xrange &amp; range">
<node CREATED="1340596713701" FOLDED="true" ID="ID_89341792" MODIFIED="1340597316608" TEXT="xrange([start], stop[, step])">
<node CREATED="1340596722572" ID="ID_303046616" MODIFIED="1340596723052" TEXT="This function is very similar to range(), but returns an &#x201c;xrange object&#x201d; instead of a list. This is an opaque sequence type which yields the same values as the corresponding list, without actually storing them all simultaneously. The advantage of xrange() over range() is minimal (since xrange() still has to create the values when asked for them) except when a very large range is used on a memory-starved machine or when all of the range&#x2019;s elements are never used (such as when the loop is usually terminated with break)."/>
</node>
<node CREATED="1340594420202" FOLDED="true" ID="ID_1978300564" MODIFIED="1340594454752" TEXT="range([start], stop[, step])">
<node CREATED="1340594438401" ID="ID_1431238173" MODIFIED="1340594452909" TEXT="This is a versatile function to create lists containing arithmetic progressions. It is most often used in for loops. The arguments must be plain integers. If the step argument is omitted, it defaults to 1. If the start argument is omitted, it defaults to 0. The full form returns a list of plain integers [start, start + step, start + 2 * step, ...]. If step is positive, the last element is the largest start + i * step less than stop; if step is negative, the last element is the smallest start + i * step greater than stop. step must not be zero (or else ValueError is raised). Example:&#xa;&#xa;&gt;&gt;&gt; range(10)&#xa;[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]&#xa;&gt;&gt;&gt; range(1, 11)&#xa;[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]&#xa;&gt;&gt;&gt; range(0, 30, 5)&#xa;[0, 5, 10, 15, 20, 25]&#xa;&gt;&gt;&gt; range(0, 10, 3)&#xa;[0, 3, 6, 9]&#xa;&gt;&gt;&gt; range(0, -10, -1)&#xa;[0, -1, -2, -3, -4, -5, -6, -7, -8, -9]&#xa;&gt;&gt;&gt; range(0)&#xa;[]&#xa;&gt;&gt;&gt; range(1, 0)&#xa;[]"/>
</node>
</node>
</node>
<node CREATED="1340593301264" FOLDED="true" ID="ID_1734732157" MODIFIED="1340598930598" TEXT="ord, chr, unichr, unicode">
<node CREATED="1340229236774" FOLDED="true" ID="ID_670105879" MODIFIED="1340598916790" TEXT="chr(i)">
<node CREATED="1340229244598" ID="ID_1850281583" MODIFIED="1340229245285" TEXT="Return a string of one character whose ASCII code is the integer i. For example, chr(97) returns the string &apos;a&apos;. This is the inverse of ord(). The argument must be in the range [0..255], inclusive; ValueError will be raised if i is outside that range. See also unichr()."/>
</node>
<node CREATED="1340593242940" FOLDED="true" ID="ID_544571294" MODIFIED="1340598599274" TEXT="ord(c)">
<node CREATED="1340593248491" ID="ID_299156289" MODIFIED="1340593249290" TEXT="Given a string of length one, return an integer representing the Unicode code point of the character when the argument is a unicode object, or the value of the byte when the argument is an 8-bit string. For example, ord(&apos;a&apos;) returns the integer 97, ord(u&apos;\u2020&apos;) returns 8224. This is the inverse of chr() for 8-bit strings and of unichr() for unicode objects. If a unicode argument is given and Python was built with UCS2 Unicode, then the character&#x2019;s code point must be in the range [0..65535] inclusive; otherwise the string length is two, and a TypeError will be raised."/>
</node>
<node CREATED="1340596587898" FOLDED="true" ID="ID_1980907426" MODIFIED="1340596600899" TEXT="unichr(i)">
<node CREATED="1340596593434" ID="ID_1142605535" MODIFIED="1340596593874" TEXT="Return the Unicode string of one character whose Unicode code is the integer i. For example, unichr(97) returns the string u&apos;a&apos;. This is the inverse of ord() for Unicode strings. The valid range for the argument depends how Python was configured &#x2013; it may be either UCS2 [0..0xFFFF] or UCS4 [0..0x10FFFF]. ValueError is raised otherwise. For ASCII and 8-bit strings see chr()."/>
</node>
<node CREATED="1340596629656" FOLDED="true" ID="ID_1513440287" MODIFIED="1340598477992" TEXT="unicode([object[, encoding[, errors]]])">
<node CREATED="1340596635656" ID="ID_1458412410" MODIFIED="1340596636704" TEXT="Return the Unicode string version of object using one of the following modes:"/>
<node CREATED="1340596644936" ID="ID_369793094" MODIFIED="1340596645600" TEXT="If encoding and/or errors are given, unicode() will decode the object which can either be an 8-bit string or a character buffer using the codec for encoding. The encoding parameter is a string giving the name of an encoding; if the encoding is not known, LookupError is raised. Error handling is done according to errors; this specifies the treatment of characters which are invalid in the input encoding. If errors is &apos;strict&apos; (the default), a ValueError is raised on errors, while a value of &apos;ignore&apos; causes errors to be silently ignored, and a value of &apos;replace&apos; causes the official Unicode replacement character, U+FFFD, to be used to replace input characters which cannot be decoded. See also the codecs module."/>
<node CREATED="1340596651792" ID="ID_997291497" MODIFIED="1340596653175" TEXT="If no optional parameters are given, unicode() will mimic the behaviour of str() except that it returns Unicode strings instead of 8-bit strings. More precisely, if object is a Unicode string or subclass it will return that Unicode string without any additional decoding applied."/>
<node CREATED="1340596660143" ID="ID_1072516893" MODIFIED="1340596660895" TEXT="For objects which provide a __unicode__() method, it will call this method without arguments to create a Unicode string. For all other objects, the 8-bit string version or representation is requested and then converted to a Unicode string using the codec for the default encoding in &apos;strict&apos; mode."/>
</node>
</node>
<node CREATED="1340597003632" FOLDED="true" ID="ID_164655636" MODIFIED="1340598937686" TEXT="Abs, Divmod, Sum, Pow, Round">
<node CREATED="1340146345815" FOLDED="true" ID="ID_1551608791" MODIFIED="1340597013901" TEXT="abs(x)">
<node CREATED="1340146355470" ID="ID_791424156" MODIFIED="1340146356259" TEXT="Return the absolute value of a number. The argument may be a plain or long integer or a floating point number. If the argument is a complex number, its magnitude is returned."/>
<node CREATED="1340146370357" ID="ID_1641173129" MODIFIED="1340146375499" TEXT="&gt;&gt;&gt; abs(-3.5)&#xa;3.5"/>
</node>
<node CREATED="1340250686414" FOLDED="true" ID="ID_337779085" MODIFIED="1340597032660" TEXT="divmod(a, b)">
<node CREATED="1340250692381" ID="ID_1054533452" MODIFIED="1340250693220" TEXT="Take two (non complex) numbers as arguments and return a pair of numbers consisting of their quotient and remainder when using long division. With mixed operand types, the rules for binary arithmetic operators apply. For plain and long integers, the result is the same as (a // b, a % b). For floating point numbers the result is (q, a % b), where q is usually math.floor(a / b) but may be 1 less than that. In any case q * b + a % b is very close to a, if a % b is non-zero it has the same sign as b, and 0 &lt;= abs(a % b) &lt; abs(b)."/>
<node CREATED="1340250837176" ID="ID_1978140766" MODIFIED="1340250882292" TEXT="&gt;&gt;&gt; divmod(21, 5)&#xa;(4, 1)"/>
<node CREATED="1340250815833" ID="ID_634232351" MODIFIED="1340250816446" TEXT="Using divmod() with complex numbers is deprecated."/>
</node>
<node CREATED="1340596272208" FOLDED="true" ID="ID_1070782378" MODIFIED="1340597081062" TEXT="sum(iterable[, start])">
<node CREATED="1340596278024" ID="ID_62770358" MODIFIED="1340596278503" TEXT="Sums start and the items of an iterable from left to right and returns the total. start defaults to 0. The iterable&#x2018;s items are normally numbers, and the start value is not allowed to be a string."/>
<node CREATED="1340596284464" ID="ID_1261106834" MODIFIED="1340596285223" TEXT="For some use cases, there are good alternatives to sum(). The preferred, fast way to concatenate a sequence of strings is by calling &apos;&apos;.join(sequence). To add floating point values with extended precision, see math.fsum(). To concatenate a series of iterables, consider using itertools.chain().  "/>
</node>
<node CREATED="1340593332735" FOLDED="true" ID="ID_1707172822" MODIFIED="1340597098564" TEXT="pow(x, y[, z])">
<node CREATED="1340593338118" ID="ID_1361926392" MODIFIED="1340593338983" TEXT="Return x to the power y; if z is present, return x to the power y, modulo z (computed more efficiently than pow(x, y) % z). The two-argument form pow(x, y) is equivalent to using the power operator: x**y."/>
<node CREATED="1340593369349" ID="ID_162900455" MODIFIED="1340593370467" TEXT="The arguments must have numeric types. With mixed operand types, the coercion rules for binary arithmetic operators apply. For int and long int operands, the result has the same type as the operands (after coercion) unless the second argument is negative; in that case, all arguments are converted to float and a float result is delivered. For example, 10**2 returns 100, but 10**-2 returns 0.01. (This last feature was added in Python 2.2. In Python 2.1 and before, if both arguments were of integer types and the second argument was negative, an exception was raised.) If the second argument is negative, the third argument must be omitted. If z is present, x and y must be of integer types, and y must be non-negative. (This restriction was added in Python 2.2. In Python 2.1 and before, floating 3-argument pow() returned platform-dependent results depending on floating-point rounding accidents.)"/>
</node>
<node CREATED="1340595128923" FOLDED="true" ID="ID_710516652" MODIFIED="1340597196769" TEXT="round(x[, n])">
<node CREATED="1340595144562" ID="ID_188557221" MODIFIED="1340595145425" TEXT="Return the floating point value x rounded to n digits after the decimal point. If n is omitted, it defaults to zero. The result is a floating point number. Values are rounded to the closest multiple of 10 to the power minus n; if two multiples are equally close, rounding is done away from 0 (so. for example, round(0.5) is 1.0 and round(-0.5) is -1.0)."/>
<node CREATED="1340595209327" ID="ID_483230949" MODIFIED="1340595212916" TEXT="&gt;&gt;&gt; round(5)&#xa;5.0&#xa;&gt;&gt;&gt; round(.5)&#xa;1.0"/>
<node CREATED="1340595241590" ID="ID_1656374282" MODIFIED="1340595244970" TEXT="Note The behavior of round() for floats can be surprising: for example, round(2.675, 2) gives 2.67 instead of the expected 2.68. This is not a bug: it&#x2019;s a result of the fact that most decimal fractions can&#x2019;t be represented exactly as a float. See Floating Point Arithmetic: Issues and Limitations for more information."/>
</node>
</node>
<node CREATED="1340253019770" FOLDED="true" ID="ID_369799186" MODIFIED="1340598796867" TEXT="Getattr, Setattr, Hasattr, Delattr">
<node CREATED="1340252852057" FOLDED="true" ID="ID_729026563" MODIFIED="1340253014547" TEXT="getattr(object, name[, default])">
<node CREATED="1340252857561" ID="ID_474889239" MODIFIED="1340252858391" TEXT="Return the value of the named attribute of object. name must be a string. If the string is the name of one of the object&#x2019;s attributes, the result is the value of that attribute. For example, getattr(x, &apos;foobar&apos;) is equivalent to x.foobar. If the named attribute does not exist, default is returned if provided, otherwise AttributeError is raised."/>
</node>
<node CREATED="1340595655323" FOLDED="true" ID="ID_1256899752" MODIFIED="1340595738756" TEXT="setattr(object, name, value)">
<node CREATED="1340595670610" ID="ID_470352598" MODIFIED="1340595675538" TEXT="This is the counterpart of getattr(). The arguments are an object, a string and an arbitrary value. The string may name an existing attribute or a new attribute. The function assigns the value to the attribute, provided the object allows it. For example, setattr(x, &apos;foobar&apos;, 123) is equivalent to x.foobar = 123."/>
</node>
<node CREATED="1340595697824" FOLDED="true" ID="ID_975072151" MODIFIED="1340595707610" TEXT="hasattr(object, name)">
<node CREATED="1340595704129" ID="ID_1287182738" MODIFIED="1340595704848" TEXT="The arguments are an object and a string. The result is True if the string is the name of one of the object&#x2019;s attributes, False if not. (This is implemented by calling getattr(object, name) and seeing whether it raises an exception or not.)"/>
</node>
<node CREATED="1340246069504" FOLDED="true" ID="ID_143291238" MODIFIED="1340247024988" TEXT="delattr(object, name)">
<node CREATED="1340246076528" ID="ID_349908249" MODIFIED="1340246077198" TEXT="This is a relative of setattr(). The arguments are an object and a string. The string must be the name of one of the object&#x2019;s attributes. The function deletes the named attribute, provided the object allows it. For example, delattr(x, &apos;foobar&apos;) is equivalent to del x.foobar."/>
</node>
</node>
<node CREATED="1340592676700" FOLDED="true" ID="ID_892135783" MODIFIED="1342722761138" TEXT="Max, Min, Cmp, Sorted, Reversed, Zip, Slice">
<node CREATED="1340590818610" FOLDED="true" ID="ID_711573812" MODIFIED="1340592691500" TEXT="max(iterable[, args...][key])">
<node CREATED="1340590849441" ID="ID_1426294175" MODIFIED="1340590850001" TEXT="With a single argument iterable, return the largest item of a non-empty iterable (such as a string, tuple or list). With more than one argument, return the largest of the arguments."/>
<node CREATED="1340590854641" ID="ID_1955498172" MODIFIED="1340590855785" TEXT="The optional key argument specifies a one-argument ordering function like that used for list.sort(). The key argument, if supplied, must be in keyword form (for example, max(a,b,c,key=func))."/>
<node CREATED="1340591016356" ID="ID_1869913012" MODIFIED="1340591020000" TEXT="&gt;&gt;&gt; max([1, 2, 3])&#xa;3&#xa;&gt;&gt;&gt; max([1, 2, 3], [4, 5, 6])&#xa;[4, 5, 6]&#xa;&gt;&gt;&gt; max([1, 2, 3], [4, 5, 6], [7])&#xa;[7]"/>
</node>
<node CREATED="1340591203350" FOLDED="true" ID="ID_1900231187" MODIFIED="1340592357583" TEXT="min(iterable[, args...][key])">
<node CREATED="1340592141201" ID="ID_1466247114" MODIFIED="1340592141944" TEXT="With a single argument iterable, return the smallest item of a non-empty iterable (such as a string, tuple or list). With more than one argument, return the smallest of the arguments."/>
<node CREATED="1340592146257" ID="ID_173101508" MODIFIED="1340592147048" TEXT="The optional key argument specifies a one-argument ordering function like that used for list.sort(). The key argument, if supplied, must be in keyword form (for example, min(a,b,c,key=func))."/>
</node>
<node CREATED="1340595778629" FOLDED="true" ID="ID_1304012144" MODIFIED="1342722759978" TEXT="sorted(iterable[, cmp[, key[, reverse]]])">
<node CREATED="1340595786637" ID="ID_769512805" MODIFIED="1340595787300" TEXT="Return a new sorted list from the items in iterable."/>
<node CREATED="1340595793180" ID="ID_835708995" MODIFIED="1340595794572" TEXT="The optional arguments cmp, key, and reverse have the same meaning as those for the list.sort() method (described in section Mutable Sequence Types)."/>
<node CREATED="1340595805828" ID="ID_1777964672" MODIFIED="1340595806460" TEXT="cmp specifies a custom comparison function of two arguments (iterable elements) which should return a negative, zero or positive number depending on whether the first argument is considered smaller than, equal to, or larger than the second argument: cmp=lambda x,y: cmp(x.lower(), y.lower()). The default value is None."/>
<node CREATED="1340595821163" ID="ID_851165317" MODIFIED="1340595822587" TEXT="key specifies a function of one argument that is used to extract a comparison key from each list element: key=str.lower. The default value is None (compare the elements directly)."/>
<node CREATED="1340595831811" ID="ID_138749699" MODIFIED="1340595832650" TEXT="reverse is a boolean value. If set to True, then the list elements are sorted as if each comparison were reversed."/>
<node CREATED="1340595865737" ID="ID_1084770385" MODIFIED="1340595866761" TEXT="In general, the key and reverse conversion processes are much faster than specifying an equivalent cmp function. This is because cmp is called multiple times for each list element while key and reverse touch each element only once. Use functools.cmp_to_key() to convert an old-style cmp function to a key function."/>
<node CREATED="1340595881809" ID="ID_427185581" MODIFIED="1340595882451" TEXT="http://wiki.python.org/moin/HowTo/Sorting/"/>
</node>
<node CREATED="1340229483219" FOLDED="true" ID="ID_1529663657" MODIFIED="1340597255154" TEXT="cmp(x, y)">
<node CREATED="1340229491827" ID="ID_1662676876" MODIFIED="1340229492682" TEXT="Compare the two objects x and y and return an integer according to the outcome. The return value is negative if x &lt; y, zero if x == y and strictly positive if x &gt; y."/>
<node CREATED="1340229522817" ID="ID_970639678" MODIFIED="1340229525392" TEXT="&gt;&gt;&gt; cmp(0, 1)&#xa;-1&#xa;&gt;&gt;&gt; cmp(1, 0)&#xa;1&#xa;"/>
</node>
<node CREATED="1340595075037" FOLDED="true" ID="ID_1380702220" MODIFIED="1340598331142" TEXT="reversed(seq)">
<node CREATED="1340595086357" ID="ID_1144353445" MODIFIED="1340595087060" TEXT="Return a reverse iterator. seq must be an object which has a __reversed__() method or supports the sequence protocol (the __len__() method and the __getitem__() method with integer arguments starting at 0)."/>
</node>
<node CREATED="1340596731420" FOLDED="true" ID="ID_697712142" MODIFIED="1340598372476" TEXT="zip([iterable, ...])">
<node CREATED="1340596740972" ID="ID_707836033" MODIFIED="1340596742140" TEXT="This function returns a list of tuples, where the i-th tuple contains the i-th element from each of the argument sequences or iterables. The returned list is truncated in length to the length of the shortest argument sequence. When there are multiple arguments which are all of the same length, zip() is similar to map() with an initial argument of None. With a single sequence argument, it returns a list of 1-tuples. With no arguments, it returns an empty list."/>
<node CREATED="1340596749451" ID="ID_1252885043" MODIFIED="1340596750059" TEXT="The left-to-right evaluation order of the iterables is guaranteed. This makes possible an idiom for clustering a data series into n-length groups using zip(*[iter(s)]*n)."/>
<node CREATED="1340596756922" ID="ID_1185204670" MODIFIED="1340596767303" TEXT="zip() in conjunction with the * operator can be used to unzip a list:&#xa;&#xa;&gt;&gt;&gt; x = [1, 2, 3]&#xa;&gt;&gt;&gt; y = [4, 5, 6]&#xa;&gt;&gt;&gt; zipped = zip(x, y)&#xa;&gt;&gt;&gt; zipped&#xa;[(1, 4), (2, 5), (3, 6)]&#xa;&gt;&gt;&gt; x2, y2 = zip(*zipped)&#xa;&gt;&gt;&gt; x == list(x2) and y == list(y2)&#xa;True"/>
</node>
<node CREATED="1340595725624" FOLDED="true" ID="ID_1082276280" MODIFIED="1340598399459" TEXT="slice([start], stop[, step])">
<node CREATED="1340595746927" ID="ID_1460059778" MODIFIED="1340595747406" TEXT="Return a slice object representing the set of indices specified by range(start, stop, step). The start and step arguments default to None. Slice objects have read-only data attributes start, stop and step which merely return the argument values (or their default). They have no other explicit functionality; however they are used by Numerical Python and other third party extensions. Slice objects are also generated when extended indexing syntax is used. For example: a[start:stop:step] or a[start:stop, i]. See itertools.islice() for an alternate version that returns an iterator."/>
<node CREATED="1340598183535" ID="ID_511996781" MODIFIED="1340598193779" TEXT="[1, 2, 3]&#xa;&gt;&gt;&gt; y = slice(0, 2)&#xa;&gt;&gt;&gt; y&#xa;slice(0, 2, None)&#xa;&#xa;&gt;&gt;&gt; x[y]&#xa;[1, 2]"/>
</node>
</node>
<node CREATED="1340597602759" FOLDED="true" ID="ID_47797491" MODIFIED="1340598942592" TEXT="Getting information about an object">
<node CREATED="1340146391492" FOLDED="true" ID="ID_1918692941" MODIFIED="1340597801273" TEXT="all(iterable)">
<node CREATED="1340146402404" ID="ID_488503261" MODIFIED="1340146406506" TEXT="Return True if all elements of the iterable are true (or if the iterable is empty). Equivalent to:&#xa;&#xa;def all(iterable):&#xa;    for element in iterable:&#xa;        if not element:&#xa;            return False&#xa;    return True"/>
</node>
<node CREATED="1340146445842" FOLDED="true" ID="ID_1350713441" MODIFIED="1340597801272" TEXT="any(iterable)">
<node CREATED="1340146452586" ID="ID_295479438" MODIFIED="1340146455576" TEXT="Return True if any element of the iterable is true. If the iterable is empty, return False. Equivalent to:&#xa;&#xa;def any(iterable):&#xa;    for element in iterable:&#xa;        if element:&#xa;            return True&#xa;    return False"/>
</node>
<node CREATED="1340300618251" FOLDED="true" ID="ID_403674975" MODIFIED="1340300817202" TEXT="isinstance(object, classinfo)">
<node CREATED="1340300662225" ID="ID_1957846233" MODIFIED="1340300662713" TEXT="Return true if the object argument is an instance of the classinfo argument, or of a (direct, indirect or virtual) subclass thereof. Also return true if classinfo is a type object (new-style class) and object is an object of that type or of a (direct, indirect or virtual) subclass thereof. If object is not a class instance or an object of the given type, the function always returns false."/>
<node CREATED="1340300668377" ID="ID_1541056755" MODIFIED="1340300668912" TEXT="If classinfo is neither a class object nor a type object, it may be a tuple of class or type objects, or may recursively contain other such tuples (other sequence types are not accepted). If classinfo is not a class, type, or tuple of classes, types, and such tuples, a TypeError exception is raised."/>
<node CREATED="1340300812737" ID="ID_1344340337" MODIFIED="1340300816339" TEXT="&gt;&gt;&gt; s = &quot;abc&quot;&#xa;&gt;&gt;&gt; isinstance(s, str)&#xa;True"/>
</node>
<node CREATED="1340300750916" FOLDED="true" ID="ID_869300533" MODIFIED="1340300965404" TEXT="issubclass(class, classinfo)">
<node CREATED="1340300760765" ID="ID_1483667744" MODIFIED="1340300761284" TEXT="Return true if class is a subclass (direct, indirect or virtual) of classinfo. A class is considered a subclass of itself. classinfo may be a tuple of class objects, in which case every entry in classinfo will be checked. In any other case, a TypeError exception is raised."/>
<node CREATED="1340300930733" ID="ID_187484328" MODIFIED="1340300962592" TEXT="&gt;&gt;&gt; class myclass:&#xa;...     pass&#xa;&gt;&gt;&gt; class myclass2(myclass):&#xa;...     pass&#xa;&#xa;&gt;&gt;&gt; issubclass(myclass2, myclass)&#xa;True&#xa;&#xa;&gt;&gt;&gt; issubclass(myclass, myclass)&#xa;True"/>
<node CREATED="1340300825386" ID="ID_1359928573" MODIFIED="1340300829626" TEXT="&gt;&gt;&gt; s = &quot;abc&quot;&#xa;&gt;&gt;&gt; issubclass(s, str)&#xa;Traceback (most recent call last):&#xa;  File &quot;&lt;input&gt;&quot;, line 1, in &lt;module&gt;&#xa;TypeError: issubclass() arg 1 must be a class"/>
</node>
<node CREATED="1340253178274" FOLDED="true" ID="ID_289710620" MODIFIED="1340597696121" TEXT="help([object])">
<node CREATED="1340253200714" ID="ID_1658264816" MODIFIED="1340253203632" TEXT="Invoke the built-in help system. (This function is intended for interactive use.) If no argument is given, the interactive help system starts on the interpreter console. If the argument is a string, then the string is looked up as the name of a module, function, class, method, keyword, or documentation topic, and a help page is printed on the console. If the argument is any other kind of object, a help page on the object is generated.&#xa;&#xa;This function is added to the built-in namespace by the site module."/>
<node CREATED="1340253309230" ID="ID_669888822" MODIFIED="1340253322378" TEXT="&gt;&gt;&gt;help(&quot;hash&quot;)&#xa;&#xa;Help on built-in function hash in module __builtin__:&#xa;&#xa;hash(...)&#xa;    hash(object) -&gt; integer&#xa;    &#xa;    Return a hash value for the object.  Two objects with the same value have&#xa;    the same hash value.  The reverse is not necessarily true, but likely.&#xa;(END) "/>
</node>
<node CREATED="1340253066151" FOLDED="true" ID="ID_613784548" MODIFIED="1340597809068" TEXT="hash(object)">
<node CREATED="1340253074622" ID="ID_1971007439" MODIFIED="1340253075398" TEXT="Return the hash value of the object (if it has one). Hash values are integers. They are used to quickly compare dictionary keys during a dictionary lookup. Numeric values that compare equal have the same hash value (even if they are of different types, as is the case for 1 and 1.0)."/>
</node>
<node CREATED="1340253395201" FOLDED="true" ID="ID_1983897108" MODIFIED="1340597811884" TEXT="id(object)">
<node CREATED="1340253410041" ID="ID_865356665" MODIFIED="1340253413503" TEXT="Return the &#x201c;identity&#x201d; of an object. This is an integer (or long integer) which is guaranteed to be unique and constant for this object during its lifetime. Two objects with non-overlapping lifetimes may have the same id() value."/>
<node CREATED="1340297478765" ID="ID_739831150" MODIFIED="1340297481294" TEXT="&gt;&gt;&gt; s = &quot;abc&quot;&#xa;&gt;&gt;&gt; id(s)&#xa;4382697312"/>
</node>
<node CREATED="1340303543953" FOLDED="true" ID="ID_1647356630" MODIFIED="1340597358366" TEXT="len(s)">
<node CREATED="1340303550024" ID="ID_1697478768" MODIFIED="1340303550488" TEXT="Return the length (the number of items) of an object. The argument may be a sequence (string, tuple or list) or a mapping (dictionary).  "/>
</node>
<node CREATED="1340250293999" FOLDED="true" ID="ID_820041043" MODIFIED="1340597856930" TEXT="dir([object])">
<node CREATED="1340250333925" ID="ID_106118008" MODIFIED="1340250334571" TEXT="Without arguments, return the list of names in the current local scope. With an argument, attempt to return a list of valid attributes for that object."/>
<node CREATED="1340250350284" ID="ID_43852585" MODIFIED="1340250352738" TEXT="If the object has a method named __dir__(), this method will be called and must return the list of attributes. This allows objects that implement a custom __getattr__() or __getattribute__() function to customize the way dir() reports their attributes.&#xa;&#xa;If the object does not provide __dir__(), the function tries its best to gather information from the object&#x2019;s __dict__ attribute, if defined, and from its type object. The resulting list is not necessarily complete, and may be inaccurate when the object has a custom __getattr__()."/>
<node CREATED="1340250362988" ID="ID_155697683" MODIFIED="1340250399536" TEXT="The default dir() mechanism behaves differently with different types of objects, as it attempts to produce the most relevant, rather than complete, information:&#xa;&#xa;- If the object is a module object, the list contains the names of the module&#x2019;s attributes.&#xa;- If the object is a type or class object, the list contains the names of its attributes, and recursively of the attributes of its bases.&#xa;- Otherwise, the list contains the object&#x2019;s attributes&#x2019; names, the names of its class&#x2019;s attributes, and recursively of the attributes of its class&#x2019;s base classes.&#xa;"/>
<node CREATED="1340250541973" ID="ID_1423248168" MODIFIED="1340250547082" TEXT="&gt;&gt;&gt; class Shape(object):&#xa;        def __dir__(self):&#xa;            return [&apos;area&apos;, &apos;perimeter&apos;, &apos;location&apos;]&#xa;&gt;&gt;&gt; s = Shape()&#xa;&gt;&gt;&gt; dir(s)&#xa;[&apos;area&apos;, &apos;perimeter&apos;, &apos;location&apos;]"/>
<node CREATED="1340250613593" ID="ID_787671073" MODIFIED="1340250616455" TEXT="&gt;&gt;&gt; s = &quot;abc&quot;&#xa;&gt;&gt;&gt; dir(s)&#xa;[&apos;__add__&apos;, &apos;__class__&apos;, &apos;__contains__&apos;, &apos;__delattr__&apos;, &apos;__doc__&apos;, &apos;__eq__&apos;, &apos;__&#xa;format__&apos;, &apos;__ge__&apos;, &apos;__getattribute__&apos;, &apos;__getitem__&apos;, &apos;__getnewargs__&apos;, &apos;__get&#xa;slice__&apos;, &apos;__gt__&apos;, &apos;__hash__&apos;, &apos;__init__&apos;, &apos;__le__&apos;, &apos;__len__&apos;, &apos;__lt__&apos;, &apos;__mo&#xa;d__&apos;, &apos;__mul__&apos;, &apos;__ne__&apos;, &apos;__new__&apos;, &apos;__reduce__&apos;, &apos;__reduce_ex__&apos;, &apos;__repr__&apos;,&#xa; &apos;__rmod__&apos;, &apos;__rmul__&apos;, &apos;__setattr__&apos;, &apos;__sizeof__&apos;, &apos;__str__&apos;, &apos;__subclasshook&#xa;__&apos;, &apos;_formatter_field_name_split&apos;, &apos;_formatter_parser&apos;, &apos;capitalize&apos;, &apos;center&apos;,&#xa; &apos;count&apos;, &apos;decode&apos;, &apos;encode&apos;, &apos;endswith&apos;, &apos;expandtabs&apos;, &apos;find&apos;, &apos;format&apos;, &apos;index&#xa;&apos;, &apos;isalnum&apos;, &apos;isalpha&apos;, &apos;isdigit&apos;, &apos;islower&apos;, &apos;isspace&apos;, &apos;istitle&apos;, &apos;isupper&apos;,&#xa;&apos;join&apos;, &apos;ljust&apos;, &apos;lower&apos;, &apos;lstrip&apos;, &apos;partition&apos;, &apos;replace&apos;, &apos;rfind&apos;, &apos;rindex&apos;, &apos;&#xa;rjust&apos;, &apos;rpartition&apos;, &apos;rsplit&apos;, &apos;rstrip&apos;, &apos;split&apos;, &apos;splitlines&apos;, &apos;startswith&apos;, &apos;&#xa;strip&apos;, &apos;swapcase&apos;, &apos;title&apos;, &apos;translate&apos;, &apos;upper&apos;, &apos;zfill&apos;]&#xa;"/>
</node>
<node CREATED="1340146467090" FOLDED="true" ID="ID_1159135610" MODIFIED="1340597877673" TEXT="basestring()">
<node CREATED="1340146472049" ID="ID_1890959989" MODIFIED="1340146472799" TEXT="This abstract type is the superclass for str and unicode. It cannot be called or instantiated, but it can be used to test whether an object is an instance of str or unicode. isinstance(obj, basestring) is equivalent to isinstance(obj, (str, unicode))."/>
<node CREATED="1340227040742" ID="ID_1121054410" MODIFIED="1340227049971" TEXT="&gt;&gt;&gt; s = &quot;abc&quot;&#xa;&gt;&gt;&gt; isinstance(s, basestring)&#xa;True&#xa;"/>
<node CREATED="1340227010576" ID="ID_1986059943" MODIFIED="1340227013720" TEXT="&gt;&gt;&gt; s = &quot;abc&quot;&#xa;&gt;&gt;&gt; isinstance(s, str)&#xa;True&#xa;"/>
</node>
<node CREATED="1340229173913" FOLDED="true" ID="ID_533201425" MODIFIED="1340597907168" TEXT="callable(object)">
<node CREATED="1340229180465" ID="ID_1982818571" MODIFIED="1340229181225" TEXT="Return True if the object argument appears callable, False if not. If this returns true, it is still possible that a call fails, but if it is false, calling object will never succeed. Note that classes are callable (calling a class returns a new instance); class instances are callable if they have a __call__() method."/>
</node>
<node CREATED="1340596679535" FOLDED="true" ID="ID_849027401" MODIFIED="1340597968741" TEXT="vars([object])">
<node CREATED="1340596684694" ID="ID_1114387498" MODIFIED="1340596685215" TEXT="Return the __dict__ attribute for a module, class, instance, or any other object with a __dict__ attribute."/>
<node CREATED="1340596698046" ID="ID_1982877523" MODIFIED="1340596698781" TEXT="Objects such as modules and instances have an updateable __dict__ attribute; however, other objects may have write restrictions on their __dict__ attributes (for example, new-style classes use a dictproxy to prevent direct dictionary updates)."/>
<node CREATED="1340596704277" ID="ID_1602510754" MODIFIED="1340596704861" TEXT="Without an argument, vars() acts like locals(). Note, the locals dictionary is only useful for reads since updates to the locals dictionary are ignored."/>
</node>
<node CREATED="1340308258748" FOLDED="true" ID="ID_1167932097" MODIFIED="1340598014627" TEXT="locals()">
<node CREATED="1340308264243" ID="ID_1380077355" MODIFIED="1340308264906" TEXT="Update and return a dictionary representing the current local symbol table. Free variables are returned by locals() when it is called in function blocks, but not in class blocks."/>
<node CREATED="1340308361262" ID="ID_269660248" MODIFIED="1340308361671" TEXT="Note The contents of this dictionary should not be modified; changes may not affect the values of local and free variables used by the interpreter."/>
</node>
</node>
<node CREATED="1340597631662" FOLDED="true" ID="ID_697641898" MODIFIED="1340598956936" TEXT="Working with classes">
<node CREATED="1340593910969" FOLDED="true" ID="ID_1717510337" MODIFIED="1340597641299" TEXT="property([fget[, fset[, fdel[, doc]]]])">
<node CREATED="1340593919073" ID="ID_1424938922" MODIFIED="1340593919800" TEXT="Return a property attribute for new-style classes (classes that derive from object)."/>
<node CREATED="1340593927232" ID="ID_1898407903" MODIFIED="1340594244383" TEXT="fget is a function for getting an attribute value, likewise fset is a function for setting, and fdel a function for del&#x2019;ing, an attribute. Typical use is to define a managed attribute x:&#xa;&#xa;class C(object):&#xa;    def __init__(self):&#xa;        self._x = None&#xa;&#xa;    def getx(self):&#xa;        return self._x&#xa;    def setx(self, value):&#xa;        self._x = value&#xa;    def delx(self):&#xa;        del self._x&#xa;    x = property(getx, setx, delx, &quot;I&apos;m the &apos;x&apos; property.&quot;)"/>
<node CREATED="1340594034796" ID="ID_578432115" MODIFIED="1340594035379" TEXT="If then c is an instance of C, c.x will invoke the getter, c.x = value will invoke the setter and del c.x the deleter."/>
<node CREATED="1340594151830" ID="ID_897662770" MODIFIED="1340594224232" TEXT="If given, doc will be the docstring of the property attribute. Otherwise, the property will copy fget&#x2018;s docstring (if it exists). This makes it possible to create read-only properties easily using property() as a decorator:&#xa;&#xa;class Parrot(object):&#xa;    def __init__(self):&#xa;        self._voltage = 100000&#xa;&#xa;    @property&#xa;    def voltage(self):&#xa;        &quot;&quot;&quot;Get the current voltage.&quot;&quot;&quot;&#xa;        return self._voltage&#xa;&#xa;turns the voltage() method into a &#x201c;getter&#x201d; for a read-only attribute with the same name."/>
<node CREATED="1340594318262" ID="ID_1113132857" MODIFIED="1340594324547" TEXT="A property object has getter, setter, and deleter methods usable as decorators that create a copy of the property with the corresponding accessor function set to the decorated function. This is best explained with an example:&#xa;&#xa;class C(object):&#xa;    def __init__(self):&#xa;        self._x = None&#xa;&#xa;    @property&#xa;    def x(self):&#xa;        &quot;&quot;&quot;I&apos;m the &apos;x&apos; property.&quot;&quot;&quot;&#xa;        return self._x&#xa;&#xa;    @x.setter&#xa;    def x(self, value):&#xa;        self._x = value&#xa;&#xa;    @x.deleter&#xa;    def x(self):&#xa;        del self._x&#xa;&#xa;This code is exactly equivalent to the first example. Be sure to give the additional functions the same name as the original property (x in this case.)&#xa;&#xa;The returned property also has the attributes fget, fset, and fdel corresponding to the constructor arguments."/>
</node>
<node CREATED="1340595982573" FOLDED="true" ID="ID_987661066" MODIFIED="1340596212160" TEXT="staticmethod(function)">
<node CREATED="1340595990452" ID="ID_711985254" MODIFIED="1340595991124" TEXT="Return a static method for function."/>
<node CREATED="1340595996908" ID="ID_248514130" MODIFIED="1340596000168" TEXT="A static method does not receive an implicit first argument. To declare a static method, use this idiom:&#xa;&#xa;class C:&#xa;    @staticmethod&#xa;    def f(arg1, arg2, ...): ..."/>
<node CREATED="1340596039754" ID="ID_1226537787" MODIFIED="1340596040612" TEXT="The @staticmethod form is a function decorator &#x2013; see the description of function definitions in Function definitions for details.  "/>
<node CREATED="1340596163845" ID="ID_963668722" MODIFIED="1340596164468" TEXT="It can be called either on the class (such as C.f()) or on an instance (such as C().f()). The instance is ignored except for its class.  "/>
<node CREATED="1340596182436" ID="ID_183006649" MODIFIED="1340596183099" TEXT="For more information on static methods, consult the documentation on the standard type hierarchy in The standard type hierarchy.  "/>
</node>
<node CREATED="1340596321214" FOLDED="true" ID="ID_1186923835" MODIFIED="1340597982773" TEXT="super(type[, object-or-type])">
<node CREATED="1340596330086" ID="ID_973769815" MODIFIED="1340596330653" TEXT="Return a proxy object that delegates method calls to a parent or sibling class of type. This is useful for accessing inherited methods that have been overridden in a class. The search order is same as that used by getattr() except that the type itself is skipped."/>
<node CREATED="1340596362188" ID="ID_604688574" MODIFIED="1340596362998" TEXT="The __mro__ attribute of the type lists the method resolution search order used by both getattr() and super(). The attribute is dynamic and can change whenever the inheritance hierarchy is updated."/>
<node CREATED="1340596378068" ID="ID_715737506" MODIFIED="1340596378729" TEXT="If the second argument is omitted, the super object returned is unbound. If the second argument is an object, isinstance(obj, type) must be true. If the second argument is a type, issubclass(type2, type) must be true (this is useful for classmethods)."/>
<node CREATED="1340596383811" ID="ID_213838556" MODIFIED="1340596384411" TEXT="Note super() only works for new-style classes."/>
<node CREATED="1340596435057" ID="ID_322921746" MODIFIED="1340596435721" TEXT="There are two typical use cases for super. In a class hierarchy with single inheritance, super can be used to refer to parent classes without naming them explicitly, thus making the code more maintainable. This use closely parallels the use of super in other programming languages."/>
<node CREATED="1340596440520" ID="ID_686666414" MODIFIED="1340596441083" TEXT="The second use case is to support cooperative multiple inheritance in a dynamic execution environment. This use case is unique to Python and is not found in statically compiled languages or languages that only support single inheritance. This makes it possible to implement &#x201c;diamond diagrams&#x201d; where multiple base classes implement the same method. Good design dictates that this method have the same calling signature in every case (because the order of calls is determined at runtime, because that order adapts to changes in the class hierarchy, and because that order can include sibling classes that are unknown prior to runtime)."/>
<node CREATED="1340596446121" ID="ID_503400343" MODIFIED="1340596455437" TEXT="For both use cases, a typical superclass call looks like this:&#xa;&#xa;class C(B):&#xa;    def method(self, arg):&#xa;        super(C, self).method(arg)"/>
<node CREATED="1340596462432" ID="ID_344592706" MODIFIED="1340596463967" TEXT="Note that super() is implemented as part of the binding process for explicit dotted attribute lookups such as super().__getitem__(name). It does so by implementing its own __getattribute__() method for searching classes in a predictable order that supports cooperative multiple inheritance. Accordingly, super() is undefined for implicit lookups using statements or operators such as super()[name]."/>
<node CREATED="1340596471066" ID="ID_1099630004" MODIFIED="1340596472263" TEXT="Also note that super() is not limited to use inside methods. The two argument form specifies the arguments exactly and makes the appropriate references.  For practical suggestions on how to design cooperative classes using super(), see guide to using super()."/>
<node CREATED="1340596488575" ID="ID_510126115" MODIFIED="1340596489399" TEXT="http://rhettinger.wordpress.com/2011/05/26/super-considered-super/"/>
</node>
<node CREATED="1340229272364" FOLDED="true" ID="ID_1306810635" MODIFIED="1340598006364" TEXT="classmethod(function)">
<node CREATED="1340229450149" ID="ID_1752586682" MODIFIED="1340229466879" TEXT="Only use this is a decorator in a class -- makes a function in a class into a class function"/>
<node CREATED="1340229341833" ID="ID_187887729" MODIFIED="1340229347296" TEXT="Return a class method for function.&#xa;&#xa;A class method receives the class as implicit first argument, just like an instance method receives the instance. To declare a class method, use this idiom:&#xa;&#xa;class C:&#xa;    @classmethod&#xa;    def f(cls, arg1, arg2, ...): ..."/>
<node CREATED="1340229386278" ID="ID_1310961533" MODIFIED="1340229393006" TEXT="The @classmethod form is a function decorator &#x2013; see the description of function definitions in Function definitions for details.&#xa;&#xa;It can be called either on the class (such as C.f()) or on an instance (such as C().f()). The instance is ignored except for its class. If a class method is called for a derived class, the derived class object is passed as the implied first argument.&#xa;&#xa;Class methods are different than C++ or Java static methods. If you want those, see staticmethod() in this section.&#xa;&#xa;For more information on class methods, consult the documentation on the standard type hierarchy in The standard type hierarchy."/>
</node>
</node>
<node CREATED="1340597744258" FOLDED="true" ID="ID_1440680326" MODIFIED="1340598958680" TEXT="Working with files">
<node CREATED="1340252222820" FOLDED="true" ID="ID_546135510" MODIFIED="1340597762881" TEXT="file(filename[, mode[, bufsize]])">
<node CREATED="1340252246315" ID="ID_1829489081" MODIFIED="1340252250720" TEXT="Constructor function for the file type, described further in section File Objects. The constructor&#x2019;s arguments are the same as those of the open() built-in function described below.&#xa;&#xa;When opening a file, it&#x2019;s preferable to use open() instead of invoking this constructor directly. file is more suited to type testing (for example, writing isinstance(f, file))."/>
</node>
<node CREATED="1340592974982" FOLDED="true" ID="ID_165483921" MODIFIED="1340597742087" TEXT="open(name[, mode[, buffering]])">
<node CREATED="1340592983590" ID="ID_1745008022" MODIFIED="1340592984269" TEXT="Open a file, returning an object of the file type described in section File Objects. If the file cannot be opened, IOError is raised. When opening a file, it&#x2019;s preferable to use open() instead of invoking the file constructor directly."/>
<node CREATED="1340592994685" ID="ID_1321953019" MODIFIED="1340592995244" TEXT="The first two arguments are the same as for stdio&#x2018;s fopen(): name is the file name to be opened, and mode is a string indicating how the file is to be opened."/>
<node CREATED="1340593046377" ID="ID_714319856" MODIFIED="1340593047504" TEXT="The most commonly-used values of mode are &apos;r&apos; for reading, &apos;w&apos; for writing (truncating the file if it already exists), and &apos;a&apos; for appending (which on some Unix systems means that all writes append to the end of the file regardless of the current seek position). If mode is omitted, it defaults to &apos;r&apos;. The default is to use text mode, which may convert &apos;\n&apos; characters to a platform-specific representation on writing and back on reading. Thus, when opening a binary file, you should append &apos;b&apos; to the mode value to open the file in binary mode, which will improve portability. (Appending &apos;b&apos; is useful even on systems that don&#x2019;t treat binary and text files differently, where it serves as documentation.) See below for more possible values of mode."/>
<node CREATED="1340593064160" ID="ID_1434589471" MODIFIED="1340593071733" TEXT="The optional buffering argument specifies the file&#x2019;s desired buffer size: 0 means unbuffered, 1 means line buffered, any other positive value means use a buffer of (approximately) that size. A negative buffering means to use the system default, which is usually line buffered for tty devices and fully buffered for other files. If omitted, the system default is used."/>
<node CREATED="1340593124171" ID="ID_1433165839" MODIFIED="1340593125034" TEXT="Modes &apos;r+&apos;, &apos;w+&apos; and &apos;a+&apos; open the file for updating (note that &apos;w+&apos; truncates the file). Append &apos;b&apos; to the mode to open the file in binary mode, on systems that differentiate between binary and text files; on systems that don&#x2019;t have this distinction, adding the &apos;b&apos; has no effect."/>
<node CREATED="1340593190663" ID="ID_496330706" MODIFIED="1340593191485" TEXT="In addition to the standard fopen() values mode may be &apos;U&apos; or &apos;rU&apos;. Python is usually built with universal newline support; supplying &apos;U&apos; opens the file as a text file, but lines may be terminated by any of the following: the Unix end-of-line convention &apos;\n&apos;, the Macintosh convention &apos;\r&apos;, or the Windows convention &apos;\r\n&apos;. All of these external representations are seen as &apos;\n&apos; by the Python program. If Python is built without universal newline support a mode with &apos;U&apos; is the same as normal text mode. Note that file objects so opened also have an attribute called newlines which has a value of None (if no newlines have yet been seen), &apos;\n&apos;, &apos;\r&apos;, &apos;\r\n&apos;, or a tuple containing all the newline types seen."/>
<node CREATED="1340593226196" ID="ID_483963774" MODIFIED="1340593226867" TEXT="Python enforces that the mode, after stripping &apos;U&apos;, begins with &apos;r&apos;, &apos;w&apos; or &apos;a&apos;.  Python provides many file handling modules including fileinput, os, os.path, tempfile, and shutil."/>
</node>
</node>
<node CREATED="1340597405503" FOLDED="true" ID="ID_1355293493" MODIFIED="1340598959711" TEXT="Creating new objects">
<node CREATED="1340303578159" FOLDED="true" ID="ID_699720710" MODIFIED="1340598211459" TEXT="list([iterable])">
<node CREATED="1340305895062" ID="ID_798080402" MODIFIED="1340307134563" TEXT="Return a list whose items are the same and in the same order as iterable&#x2018;s items. iterable may be either a sequence, a container that supports iteration, or an iterator object. If iterable is already a list, a copy is made and returned, similar to iterable[:]. If no argument is given, returns a new empty list, []."/>
<node CREATED="1340307066749" ID="ID_1872177914" MODIFIED="1340307069477" TEXT="&gt;&gt;&gt; list(&apos;abc&apos;)&#xa;[&apos;a&apos;, &apos;b&apos;, &apos;c&apos;]"/>
<node CREATED="1340307110483" ID="ID_1833810222" MODIFIED="1340307113204" TEXT="&gt;&gt;&gt; list((1, 2, 3))&#xa;[1, 2, 3]"/>
</node>
<node CREATED="1340596499415" FOLDED="true" ID="ID_1964468048" MODIFIED="1340596520686" TEXT="tuple([iterable])">
<node CREATED="1340596505038" ID="ID_740859996" MODIFIED="1340596505822" TEXT="Return a tuple whose items are the same and in the same order as iterable&#x2018;s items. iterable may be a sequence, a container that supports iteration, or an iterator object. If iterable is already a tuple, it is returned unchanged. For instance, tuple(&apos;abc&apos;) returns (&apos;a&apos;, &apos;b&apos;, &apos;c&apos;) and tuple([1, 2, 3]) returns (1, 2, 3). If no argument is given, returns a new empty tuple, ()."/>
</node>
<node CREATED="1340250253601" FOLDED="true" ID="ID_1738238169" MODIFIED="1340598217078" TEXT="dict([arg])">
<node CREATED="1340250264672" ID="ID_857276388" MODIFIED="1340250267214" TEXT="Create a new data dictionary, optionally with items taken from arg. The dictionary type is described in Mapping Types &#x2014; dict.&#xa;&#xa;For other containers see the built in list, set, and tuple classes, and the collections module."/>
</node>
<node CREATED="1340251088997" FOLDED="true" ID="ID_978937379" MODIFIED="1340598234756" TEXT="enumerate(sequence, start=0)">
<node CREATED="1340251301244" ID="ID_193545968" MODIFIED="1340251310257" TEXT="Return an enumerate object. sequence must be a sequence, an iterator, or some other object which supports iteration. The next() method of the iterator returned by enumerate() returns a tuple containing a count (from start which defaults to 0) and the values obtained from iterating over sequence:&#xa;"/>
<node CREATED="1340251315771" ID="ID_1275227506" MODIFIED="1340251318416" TEXT="&gt;&gt;&gt; seasons = [&apos;Spring&apos;, &apos;Summer&apos;, &apos;Fall&apos;, &apos;Winter&apos;]&#xa;&gt;&gt;&gt; list(enumerate(seasons))&#xa;[(0, &apos;Spring&apos;), (1, &apos;Summer&apos;), (2, &apos;Fall&apos;), (3, &apos;Winter&apos;)]&#xa;&gt;&gt;&gt; list(enumerate(seasons, start=1))&#xa;[(1, &apos;Spring&apos;), (2, &apos;Summer&apos;), (3, &apos;Fall&apos;), (4, &apos;Winter&apos;)]"/>
<node CREATED="1340251358809" ID="ID_1765320758" MODIFIED="1340251365406" TEXT="Equivalent to:&#xa;&#xa;def enumerate(sequence, start=0):&#xa;    n = start&#xa;    for elem in sequence:&#xa;        yield n, elem&#xa;        n += 1"/>
</node>
<node CREATED="1340592749481" FOLDED="true" ID="ID_1875372032" MODIFIED="1340598221693" TEXT="object()">
<node CREATED="1340592759270" ID="ID_1595296835" MODIFIED="1340592760093" TEXT="Return a new featureless object. object is a base for all new style classes. It has the methods that are common to all instances of new style classes."/>
<node CREATED="1340592788684" ID="ID_538535839" MODIFIED="1340592792048" TEXT="&gt;&gt;&gt; x = object()&#xa;&gt;&gt;&gt; isinstance(x, object)&#xa;True"/>
</node>
<node CREATED="1340596521341" FOLDED="true" ID="ID_741777306" MODIFIED="1340598225750" TEXT="type(object)">
<node CREATED="1340596546732" ID="ID_888531336" MODIFIED="1340596547476" TEXT="Return the type of an object. The return value is a type object. The isinstance() built-in function is recommended for testing the type of an object."/>
<node CREATED="1340596552860" ID="ID_1706315496" MODIFIED="1340596553732" TEXT="With three arguments, type() functions as a constructor as detailed below."/>
</node>
<node CREATED="1340596559548" FOLDED="true" ID="ID_1155454123" MODIFIED="1340598227045" TEXT="type(name, bases, dict)">
<node CREATED="1340596569107" ID="ID_1178018369" MODIFIED="1340596575999" TEXT="Return a new type object. This is essentially a dynamic form of the class statement. The name string is the class name and becomes the __name__ attribute; the bases tuple itemizes the base classes and becomes the __bases__ attribute; and the dict dictionary is the namespace containing definitions for class body and becomes the __dict__ attribute. For example, the following two statements create identical type objects:&#xa;&#xa;&gt;&gt;&gt; class X(object):&#xa;...     a = 1&#xa;...&#xa;&gt;&gt;&gt; X = type(&apos;X&apos;, (object,), dict(a=1))"/>
</node>
<node CREATED="1340591043739" FOLDED="true" ID="ID_268273674" MODIFIED="1340597838659" TEXT="memoryview(obj)">
<node CREATED="1340591052155" ID="ID_1864718425" MODIFIED="1340591053314" TEXT="Return a &#x201c;memory view&#x201d; object created from the given argument. See memoryview type for more information."/>
</node>
<node CREATED="1340227224485" FOLDED="true" ID="ID_25098916" MODIFIED="1340597869737" TEXT="bytearray([source[, encoding[, errors]]])">
<node CREATED="1340227244149" ID="ID_238668611" MODIFIED="1340227244875" TEXT="Return a new array of bytes. The bytearray type is a mutable sequence of integers in the range 0 &lt;= x &lt; 256. It has most of the usual methods of mutable sequences, described in Mutable Sequence Types, as well as most methods that the str type has, see String Methods."/>
<node CREATED="1340227256484" ID="ID_105600236" MODIFIED="1340227275260" TEXT="The optional source parameter can be used to initialize the array in a few different ways:&#xa;&#xa;- If it is a string, you must also give the encoding (and optionally, errors) parameters; bytearray() then converts the string to bytes using str.encode().&#xa;- If it is an integer, the array will have that size and will be initialized with null bytes.&#xa;- If it is an object conforming to the buffer interface, a read-only buffer of the object will be used to initialize the bytes array.&#xa;- If it is an iterable, it must be an iterable of integers in the range 0 &lt;= x &lt; 256, which are used as the initial contents of the array.&#xa;&#xa;Without an argument, an array of size 0 is created."/>
<node CREATED="1340229160384" ID="ID_670620681" MODIFIED="1340229161369" TEXT="http://dabeaz.blogspot.com/2010/01/few-useful-bytearray-tricks.html"/>
</node>
</node>
<node CREATED="1340597477164" FOLDED="true" ID="ID_1986657930" MODIFIED="1340598960463" TEXT="Input &amp; rawinput">
<node CREATED="1340594462536" FOLDED="true" ID="ID_549772470" MODIFIED="1340594583505" TEXT="raw_input([prompt])">
<node CREATED="1340594505574" ID="ID_1569750172" MODIFIED="1340594521954" TEXT="If the prompt argument is present, it is written to standard output without a trailing newline. The function then reads a line from input, converts it to a string (stripping a trailing newline), and returns that. When EOF is read, EOFError is raised. Example:&#xa;&#xa;&gt;&gt;&gt; s = raw_input(&apos;--&gt; &apos;)&#xa;--&gt; Monty Python&apos;s Flying Circus&#xa;&gt;&gt;&gt; s&#xa;&quot;Monty Python&apos;s Flying Circus&quot;"/>
<node CREATED="1340594523342" ID="ID_1123916750" MODIFIED="1340594524045" TEXT="If the readline module was loaded, then raw_input() will use it to provide elaborate line editing and history features.  "/>
</node>
<node CREATED="1340297492477" FOLDED="true" ID="ID_324147577" MODIFIED="1340597182389" TEXT="input([prompt])">
<node CREATED="1340297529307" ID="ID_1826238474" MODIFIED="1340297533451" TEXT="Equivalent to eval(raw_input(prompt)).&#xa;&#xa;This function does not catch user errors. If the input is not syntactically valid, a SyntaxError will be raised. Other exceptions may be raised if there is an error during evaluation."/>
<node CREATED="1340297551706" ID="ID_295143451" MODIFIED="1340297554202" TEXT="If the readline module was loaded, then input() will use it to provide elaborate line editing and history features.&#xa;&#xa;Consider using the raw_input() function for general input from users."/>
</node>
</node>
<node CREATED="1340596248146" FOLDED="true" ID="ID_621130303" MODIFIED="1340598961048" TEXT="Str, Repr, Format, Print">
<node CREATED="1340596219674" FOLDED="true" ID="ID_937098065" MODIFIED="1340597296072" TEXT="str([object])">
<node CREATED="1340596225866" ID="ID_1902023228" MODIFIED="1340596226330" TEXT="Return a string containing a nicely printable representation of an object. For strings, this returns the string itself. The difference with repr(object) is that str(object) does not always attempt to return a string that is acceptable to eval(); its goal is to return a printable string. If no argument is given, returns the empty string, &apos;&apos;."/>
</node>
<node CREATED="1340594941411" FOLDED="true" ID="ID_1779545739" MODIFIED="1340596262806" TEXT="repr(object)">
<node CREATED="1340594951531" ID="ID_1052827126" MODIFIED="1340594952162" TEXT="Return a string containing a printable representation of an object. This is the same value yielded by conversions (reverse quotes). It is sometimes useful to be able to access this operation as an ordinary function. For many types, this function makes an attempt to return a string that would yield an object with the same value when passed to eval(), otherwise the representation is a string enclosed in angle brackets that contains the name of the type of the object together with additional information often including the name and address of the object. A class can control what this function returns for its instances by defining a __repr__() method."/>
<node CREATED="1340594994248" ID="ID_591108047" MODIFIED="1340595004005" TEXT="&gt;&gt;&gt; print &apos;ao\neu&apos;&#xa;ao&#xa;eu&#xa;&gt;&gt;&gt; repr(&apos;ao\neu&apos;)&#xa;&quot;&apos;ao\\neu&apos;&quot;"/>
</node>
<node CREATED="1340252546046" FOLDED="true" ID="ID_295121796" MODIFIED="1340597707328" TEXT="format(value[, format_spec])">
<node CREATED="1340252562445" ID="ID_1418412176" MODIFIED="1340252563052" TEXT="Convert a value to a &#x201c;formatted&#x201d; representation, as controlled by format_spec. The interpretation of format_spec will depend on the type of the value argument, however there is a standard formatting syntax that is used by most built-in types: Format Specification Mini-Language."/>
<node CREATED="1340252571021" ID="ID_1964297591" MODIFIED="1340252572182" TEXT=" format(value, format_spec) merely calls value.__format__(format_spec)."/>
</node>
<node CREATED="1340593807391" FOLDED="true" ID="ID_136037073" MODIFIED="1340593899082" TEXT="print([object, ...], sep=&apos; &apos;, end=&apos;\n&apos;, file=sys.stdout)">
<node CREATED="1340593816942" ID="ID_1611478414" MODIFIED="1340593817725" TEXT="Print object(s) to the stream file, separated by sep and followed by end. sep, end and file, if present, must be given as keyword arguments."/>
<node CREATED="1340593832069" ID="ID_994954530" MODIFIED="1340593832772" TEXT="All non-keyword arguments are converted to strings like str() does and written to the stream, separated by sep and followed by end. Both sep and end must be strings; they can also be None, which means to use the default values. If no object is given, print() will just write end."/>
<node CREATED="1340593838229" ID="ID_1986597276" MODIFIED="1340593838860" TEXT="The file argument must be an object with a write(string) method; if it is not present or None, sys.stdout will be used. Output buffering is determined by file. Use file.flush() to ensure, for instance, immediate appearance on a screen."/>
<node CREATED="1340593893659" ID="ID_279256927" MODIFIED="1340593897695" TEXT="Note This function is not normally available as a built-in since the name print is recognized as the print statement. To disable the statement and use the print() function, use this future statement at the top of your module:&#xa;&#xa;from __future__ import print_function"/>
</node>
</node>
<node CREATED="1340598423453" FOLDED="true" ID="ID_1277228170" MODIFIED="1340598950928" TEXT="Eval, Compile, Execfile, Reload, __import__">
<node CREATED="1340251376904" FOLDED="true" ID="ID_1425337836" MODIFIED="1340598420460" TEXT="eval(expression[, globals[, locals]])">
<node CREATED="1340251383912" ID="ID_1863003675" MODIFIED="1340251384694" TEXT="The arguments are a string and optional globals and locals. If provided, globals must be a dictionary. If provided, locals can be any mapping object."/>
<node CREATED="1340251515962" ID="ID_1989223546" MODIFIED="1340251526679" TEXT="The expression argument is parsed and evaluated as a Python expression (technically speaking, a condition list) using the globals and locals dictionaries as global and local namespace. If the globals dictionary is present and lacks &#x2018;__builtins__&#x2019;, the current globals are copied into globals before expression is parsed. This means that expression normally has full access to the standard __builtin__ module and restricted environments are propagated. If the locals dictionary is omitted it defaults to the globals dictionary. If both dictionaries are omitted, the expression is executed in the environment where eval() is called. The return value is the result of the evaluated expression. Syntax errors are reported as exceptions. Example:&#xa;&#xa;&gt;&gt;&gt; x = 1&#xa;&gt;&gt;&gt; print eval(&apos;x+1&apos;)&#xa;2"/>
<node CREATED="1340251535738" ID="ID_353219370" MODIFIED="1340251537112" TEXT="This function can also be used to execute arbitrary code objects (such as those created by compile()). In this case pass a code object instead of a string. If the code object has been compiled with &apos;exec&apos; as the mode argument, eval()&#x2018;s return value will be None."/>
<node CREATED="1340251626862" ID="ID_1742479741" MODIFIED="1340251633483" TEXT="Hints: dynamic execution of statements is supported by the exec statement. Execution of statements from a file is supported by the execfile() function. The globals() and locals() functions returns the current global and local dictionary, respectively, which may be useful to pass around for use by eval() or execfile().&#xa;&#xa;See ast.literal_eval() for a function that can safely evaluate strings with expressions containing only literals."/>
</node>
<node CREATED="1340245566903" FOLDED="true" ID="ID_318150446" MODIFIED="1340598267313" TEXT="compile(source, filename, mode[, flags[, dont_inherit]])">
<node CREATED="1340245900033" ID="ID_693936133" MODIFIED="1340245914282" TEXT="Different than the function to compile regular expressions, which is in the re module"/>
<node CREATED="1340245715354" ID="ID_1354329064" MODIFIED="1340245719063" TEXT="&#xa;Compile the source into a code or AST object. Code objects can be executed by an exec statement or evaluated by a call to eval(). source can either be a string or an AST object. Refer to the ast module documentation for information on how to work with AST objects.&#xa;&#xa;The filename argument should give the file from which the code was read; pass some recognizable value if it wasn&#x2019;t read from a file (&apos;&lt;string&gt;&apos; is commonly used).&#xa;&#xa;The mode argument specifies what kind of code must be compiled; it can be &apos;exec&apos; if source consists of a sequence of statements, &apos;eval&apos; if it consists of a single expression, or &apos;single&apos; if it consists of a single interactive statement (in the latter case, expression statements that evaluate to something other than None will be printed).&#xa;&#xa;"/>
<node CREATED="1340245933672" ID="ID_1472894080" MODIFIED="1340245941645" TEXT="The optional arguments flags and dont_inherit control which future statements (see PEP 236) affect the compilation of source. If neither is present (or both are zero) the code is compiled with those future statements that are in effect in the code that is calling compile. If the flags argument is given and dont_inherit is not (or is zero) then the future statements specified by the flags argument are used in addition to those that would be used anyway. If dont_inherit is a non-zero integer then the flags argument is it &#x2013; the future statements in effect around the call to compile are ignored.&#xa;&#xa;Future statements are specified by bits which can be bitwise ORed together to specify multiple statements. The bitfield required to specify a given feature can be found as the compiler_flag attribute on the _Feature instance in the __future__ module.&#xa;&#xa;This function raises SyntaxError if the compiled source is invalid, and TypeError if the source contains null bytes."/>
<node CREATED="1340245962259" ID="ID_1342697482" MODIFIED="1340245963092" TEXT="When compiling a string with multi-line code in &apos;single&apos; or &apos;eval&apos; mode, input must be terminated by at least one newline character. This is to facilitate detection of incomplete and complete statements in the code module."/>
</node>
<node CREATED="1340251715394" FOLDED="true" ID="ID_1512756693" MODIFIED="1340598278208" TEXT="execfile(filename[, globals[, locals]])">
<node CREATED="1340251892530" ID="ID_303112902" MODIFIED="1340251892961" TEXT="This function is similar to the exec statement, but parses a file instead of a string. It is different from the import statement in that it does not use the module administration &#x2014; it reads the file unconditionally and does not create a new module. [1]"/>
<node CREATED="1340251899874" ID="ID_1802407858" MODIFIED="1340251900496" TEXT="The arguments are a file name and two optional dictionaries. The file is parsed and evaluated as a sequence of Python statements (similarly to a module) using the globals and locals dictionaries as global and local namespace. If provided, locals can be any mapping object."/>
<node CREATED="1340251971662" ID="ID_1334871657" MODIFIED="1340251972133" TEXT="If the locals dictionary is omitted it defaults to the globals dictionary. If both dictionaries are omitted, the expression is executed in the environment where execfile() is called. The return value is None."/>
<node CREATED="1340252213547" ID="ID_801618320" MODIFIED="1340252214123" TEXT="Note The default locals act as described for function locals() below: modifications to the default locals dictionary should not be attempted. Pass an explicit locals dictionary if you need to see effects of the code on locals after function execfile() returns. execfile() cannot be used reliably to modify a function&#x2019;s locals."/>
</node>
<node CREATED="1340594702894" FOLDED="true" ID="ID_1064987273" MODIFIED="1340598290096" TEXT="reload(module)">
<node CREATED="1340594719493" ID="ID_1846389771" MODIFIED="1340594720500" TEXT="Reload a previously imported module. The argument must be a module object, so it must have been successfully imported before. This is useful if you have edited the module source file using an external editor and want to try out the new version without leaving the Python interpreter. The return value is the module object (the same as the module argument)."/>
<node CREATED="1340594729501" ID="ID_1520363926" MODIFIED="1340594751696" TEXT="When reload(module) is executed:&#xa;&#xa;- Python modules&#x2019; code is recompiled and the module-level code reexecuted, defining a new set of objects which are bound to names in the module&#x2019;s dictionary. The init function of extension modules is not called a second time.&#xa;- As with all other objects in Python the old objects are only reclaimed after their reference counts drop to zero.&#xa;- The names in the module namespace are updated to point to any new or changed objects.&#xa;- Other references to the old objects (such as names external to the module) are not rebound to refer to the new objects and must be updated in each namespace where they occur if that is desired."/>
<node CREATED="1340594779418" ID="ID_90937354" MODIFIED="1340594780050" TEXT="If a module is syntactically correct but its initialization fails, the first import statement for it does not bind its name locally, but does store a (partially initialized) module object in sys.modules. To reload the module you must first import it again (this will bind the name to the partially initialized module object) before you can reload() it."/>
<node CREATED="1340594825680" ID="ID_1881789747" MODIFIED="1340594860700" TEXT="When a module is reloaded, its dictionary (containing the module&#x2019;s global variables) is retained. Redefinitions of names will override the old definitions, so this is generally not a problem. If the new version of a module does not define a name that was defined by the old version, the old definition remains. This feature can be used to the module&#x2019;s advantage if it maintains a global table or cache of objects &#x2014; with a try statement it can test for the table&#x2019;s presence and skip its initialization if desired:&#xa;&#xa;try:&#xa;    cache&#xa;except NameError:&#xa;    cache = {}"/>
<node CREATED="1340594876830" ID="ID_799924340" MODIFIED="1340594877421" TEXT="It is legal though generally not very useful to reload built-in or dynamically loaded modules, except for sys, __main__ and __builtin__. In many cases, however, extension modules are not designed to be initialized more than once, and may fail in arbitrary ways when reloaded."/>
<node CREATED="1340594883109" ID="ID_414408059" MODIFIED="1340594883597" TEXT="If a module imports objects from another module using from ... import ..., calling reload() for the other module does not redefine the objects imported from it &#x2014; one way around this is to re-execute the from statement, another is to use import and qualified names (module.*name*) instead."/>
<node CREATED="1340594916860" ID="ID_342608607" MODIFIED="1340594917899" TEXT="If a module instantiates instances of a class, reloading the module that defines the class does not affect the method definitions of the instances &#x2014; they continue to use the old class definition. The same is true for derived classes."/>
</node>
<node CREATED="1340596784241" FOLDED="true" ID="ID_246036058" MODIFIED="1340596924356" TEXT="__import__(name[, globals[, locals[, fromlist[, level]]]])">
<node CREATED="1340596818257" ID="ID_1223472840" MODIFIED="1340596818856" TEXT="Note This is an advanced function that is not needed in everyday Python programming."/>
<node CREATED="1340596841087" ID="ID_564550072" MODIFIED="1340596841847" TEXT="This function is invoked by the import statement. It can be replaced (by importing the __builtin__ module and assigning to __builtin__.__import__) in order to change semantics of the import statement, but nowadays it is usually simpler to use import hooks (see PEP 302). Direct use of __import__() is rare, except in cases where you want to import a module whose name is only known at runtime."/>
<node CREATED="1340596849407" ID="ID_1587128163" MODIFIED="1340596849961" TEXT="The function imports the module name, potentially using the given globals and locals to determine how to interpret the name in a package context. The fromlist gives the names of objects or submodules that should be imported from the module given by name. The standard implementation does not use its locals argument at all, and uses its globals only to determine the package context of the import statement."/>
<node CREATED="1340596858511" ID="ID_1611888656" MODIFIED="1340596859126" TEXT="level specifies whether to use absolute or relative imports. The default is -1 which indicates both absolute and relative imports will be attempted. 0 means only perform absolute imports. Positive values for level indicate the number of parent directories to search relative to the directory of the module calling __import__()."/>
<node CREATED="1340596872670" ID="ID_1162970945" MODIFIED="1340596880658" TEXT="When the name variable is of the form package.module, normally, the top-level package (the name up till the first dot) is returned, not the module named by name. However, when a non-empty fromlist argument is given, the module named by name is returned.&#xa;&#xa;For example, the statement import spam results in bytecode resembling the following code:&#xa;&#xa;spam = __import__(&apos;spam&apos;, globals(), locals(), [], -1)"/>
<node CREATED="1340596885973" ID="ID_1084829117" MODIFIED="1340596893002" TEXT="The statement import spam.ham results in this call:&#xa;&#xa;spam = __import__(&apos;spam.ham&apos;, globals(), locals(), [], -1)"/>
<node CREATED="1340596901149" ID="ID_1521138612" MODIFIED="1340596909689" TEXT="Note how __import__() returns the toplevel module here because this is the object that is bound to a name by the import statement.&#xa;&#xa;On the other hand, the statement from spam.ham import eggs, sausage as saus results in&#xa;&#xa;_temp = __import__(&apos;spam.ham&apos;, globals(), locals(), [&apos;eggs&apos;, &apos;sausage&apos;], -1)&#xa;eggs = _temp.eggs&#xa;saus = _temp.sausage"/>
<node CREATED="1340596915276" ID="ID_1086811020" MODIFIED="1340596923392" TEXT="Here, the spam.ham module is returned from __import__(). From this object, the names to import are retrieved and assigned to their respective names.&#xa;&#xa;If you simply want to import a module (potentially within a package) by name, you can call __import__() and then look it up in sys.modules:&#xa;&#xa;&gt;&gt;&gt; import sys&#xa;&gt;&gt;&gt; name = &apos;foo.bar.baz&apos;&#xa;&gt;&gt;&gt; __import__(name)&#xa;&lt;module &apos;foo&apos; from ...&gt;&#xa;&gt;&gt;&gt; baz = sys.modules[name]&#xa;&gt;&gt;&gt; baz&#xa;&lt;module &apos;foo.bar.baz&apos; from ...&gt;"/>
</node>
</node>
</node>
<node CREATED="1339719102297" FOLDED="true" ID="ID_1827253886" MODIFIED="1348157982048" TEXT="Classes">
<node CREATED="1339719356894" FOLDED="true" ID="ID_1130850168" MODIFIED="1348157976720" TEXT="Class definition syntax">
<node CREATED="1339719124408" ID="ID_322489277" MODIFIED="1339719376131" TEXT="The simplest form of class definition:&#xa;&#xa;class ClassName:&#xa;    &lt;statement-1&gt;&#xa;    .&#xa;    .&#xa;    .&#xa;    &lt;statement-N&gt;"/>
<node CREATED="1339719385932" ID="ID_445149646" MODIFIED="1339719386594" TEXT="Class definitions, like function definitions (def statements) must be executed before they have any effect. (You could conceivably place a class definition in a branch of an if statement, or inside a function.)"/>
<node CREATED="1339719392941" ID="ID_253762055" MODIFIED="1340050035955" TEXT="In practice, the statements inside a class definition will usually be function definitions, but other statements are allowed, and sometimes useful."/>
<node CREATED="1339720641804" ID="ID_293629575" MODIFIED="1339720642402" TEXT="When a class definition is entered, a new namespace is created, and used as the local scope &#x2014; thus, all assignments to local variables go into this new namespace. In particular, function definitions bind the name of the new function here."/>
</node>
<node CREATED="1339720706698" FOLDED="true" ID="ID_1677247773" MODIFIED="1348157980656" TEXT="Class objects">
<node CREATED="1339720654285" ID="ID_1020211983" MODIFIED="1340050081151" TEXT="When a class definition is left normally (via the end), a class object is created. This is basically a wrapper around the contents of the namespace created by the class definition; we&#x2019;ll learn more about class objects in the next section. The original local scope (the one in effect just before the class definition was entered) is reinstated, and the class object is bound here to the class name given in the class definition header (ClassName in the example)."/>
<node CREATED="1339720718474" ID="ID_1917303825" MODIFIED="1339720718902" TEXT="Class objects support two kinds of operations: attribute references and instantiation."/>
<node CREATED="1340050089464" FOLDED="true" ID="ID_1303407730" MODIFIED="1348157978511" TEXT="Attribute references">
<node CREATED="1339720771568" ID="ID_1242483355" MODIFIED="1339720777261" TEXT="Attribute references use the standard syntax used for all attribute references in Python: obj.name. Valid attribute names are all the names that were in the class&#x2019;s namespace when the class object was created. So, if the class definition looked like this:&#xa;&#xa;class MyClass:&#xa;    &quot;&quot;&quot;A simple example class&quot;&quot;&quot;&#xa;    i = 12345&#xa;    def f(self):&#xa;        return &apos;hello world&apos;&#xa;&#xa;then MyClass.i and MyClass.f are valid attribute references, returning an integer and a function object, respectively. Class attributes can also be assigned to, so you can change the value of MyClass.i by assignment. __doc__ is also a valid attribute, returning the docstring belonging to the class: &quot;A simple example class&quot;."/>
</node>
<node CREATED="1339723913933" FOLDED="true" ID="ID_1906557339" MODIFIED="1348157979311" TEXT="Function defined outside a class">
<node CREATED="1339723981666" ID="ID_118360574" MODIFIED="1339723984417" TEXT="Any function object that is a class attribute defines a method for instances of that class. It is not necessary that the function definition is textually enclosed in the class definition: assigning a function object to a local variable in the class is also ok. For example:"/>
<node CREATED="1339723917765" ID="ID_668172153" MODIFIED="1339723920338" TEXT="# Function defined outside the class&#xa;def f1(self, x, y):&#xa;    return min(x, x+y)&#xa;&#xa;class C:&#xa;    f = f1&#xa;    def g(self):&#xa;        return &apos;hello world&apos;&#xa;    h = g"/>
</node>
<node CREATED="1339722622702" FOLDED="true" ID="ID_232350277" MODIFIED="1348157980423" TEXT="Class variables">
<node CREATED="1339722625470" ID="ID_885602279" MODIFIED="1340052128503" TEXT="Variables declared inside the class definition, but not inside a method are class or static variables:&#xa;&#xa;&gt;&gt;&gt; class MyClass:&#xa;...     i = 3&#xa;...&#xa;&gt;&gt;&gt; MyClass.i&#xa;3 &#xa;&#xa;This creates a class-level &quot;i&quot; variable, but this is distinct from any instance-level &quot;i&quot; variable, so you could have&#xa;&#xa;&gt;&gt;&gt; m = MyClass()&#xa;&gt;&gt;&gt; m.i&#xa;3&#xa;&gt;&gt;&gt; m.i = 4&#xa;&gt;&gt;&gt; MyClass.i, m.i&#xa;(3, 4)"/>
</node>
</node>
<node CREATED="1339721247323" FOLDED="true" ID="ID_1894605215" MODIFIED="1348157973951" TEXT="Instantiation &amp; Instance objects">
<node CREATED="1339720867035" ID="ID_998136569" MODIFIED="1340051992206" TEXT="Class instantiation uses function notation. Just pretend that the class object is a parameterless function that returns a new instance of the class. For example (assuming the above class):&#xa;&#xa;x = MyClass()&#xa;&#xa;creates a new instance of the class and assigns this object to the local variable x.&#xa;&#xa;"/>
<node CREATED="1339721287665" ID="ID_38391535" MODIFIED="1340050764555" TEXT="The only operations understood by instance objects are attribute references. There are two kinds of valid attribute names, data attributes and methods."/>
</node>
<node CREATED="1340050741051" FOLDED="true" ID="ID_858557655" MODIFIED="1348157973096" TEXT="Data attributes">
<node CREATED="1340050767746" ID="ID_1788023725" MODIFIED="1340050774498" TEXT="Data attributes need not be declared; like local variables, they spring into existence when they are first assigned to. For example, if x is the instance of MyClass created above, the following piece of code will print the value 16, without leaving a trace:&#xa;&#xa;x.counter = 1&#xa;while x.counter &lt; 10:&#xa;    x.counter = x.counter * 2&#xa;print x.counter&#xa;del x.counter"/>
<node CREATED="1339723802792" ID="ID_1986259659" MODIFIED="1340051110660" TEXT="Clients should use data attributes with care &#x2014; clients may mess up invariants maintained by the methods by stamping on their data attributes. Note that clients may add data attributes of their own to an instance object without affecting the validity of the methods, as long as name conflicts are avoided &#x2014; again, a naming convention can save a lot of headaches here."/>
<node CREATED="1339723629050" ID="ID_1988206100" MODIFIED="1339723759361" TEXT="Data attributes override method attributes with the same name; to avoid accidental name conflicts, which may cause hard-to-find bugs in large programs, it is wise to use some kind of convention that minimizes the chance of conflicts. Possible conventions include capitalizing method names, prefixing data attribute names with a small unique string (perhaps just an underscore), or using verbs for methods and nouns for data attributes.  "/>
<node CREATED="1339723746238" ID="ID_315546040" MODIFIED="1339723747313" TEXT="Data attributes may be referenced by methods as well as by ordinary users (&#x201c;clients&#x201d;) of an object. In other words, classes are not usable to implement pure abstract data types. In fact, nothing in Python makes it possible to enforce data hiding &#x2014; it is all based upon convention. (On the other hand, the Python implementation, written in C, can completely hide implementation details and control access to an object if necessary; this can be used by extensions to Python written in C.)"/>
</node>
<node CREATED="1340050780577" FOLDED="true" ID="ID_208833339" MODIFIED="1348157971311" TEXT="Methods &amp; method objects">
<node CREATED="1339721480127" ID="ID_1628493483" MODIFIED="1340050873518" TEXT="A method is a function that &#x201c;belongs to&#x201d; an object.&#xa;&#xa;Valid method names of an instance object depend on its class. By definition, all attributes of a class that are function objects define corresponding methods of its instances. So in our example, x.f is a valid method reference, since MyClass.f is a function. But x.f is not the same thing as MyClass.f &#x2014; it is a method object, not a function object."/>
<node CREATED="1339721987162" ID="ID_349475209" MODIFIED="1340050810769" TEXT="The special thing about methods is that the object is passed as the first argument of the function. In our example, the call x.f() is exactly equivalent to MyClass.f(x). In general, calling a method with a list of n arguments is equivalent to calling the corresponding function with an argument list that is created by inserting the method&#x2019;s object before the first argument."/>
<node CREATED="1339722233582" ID="ID_705315257" MODIFIED="1339722234100" TEXT="When an instance attribute is referenced that isn&#x2019;t a data attribute, its class is searched. If the name denotes a valid class attribute that is a function object, a method object is created by packing (pointers to) the instance object and the function object just found together in an abstract object: this is the method object. When the method object is called with an argument list, a new argument list is constructed from the instance object and the argument list, and the function object is called with this new argument list."/>
<node CREATED="1339724046095" FOLDED="true" ID="ID_1200871784" MODIFIED="1340068365107" TEXT="Methods may call other methods by using method attributes of the self argument">
<node CREATED="1339724055911" ID="ID_1517782870" MODIFIED="1339724061572" TEXT="class Bag:&#xa;    def __init__(self):&#xa;        self.data = []&#xa;    def add(self, x):&#xa;        self.data.append(x)&#xa;    def addtwice(self, x):&#xa;        self.add(x)&#xa;        self.add(x)"/>
</node>
</node>
<node CREATED="1340067479275" FOLDED="true" ID="ID_1392760077" MODIFIED="1348157962951" TEXT="Dunder methods (__init__, etc.)">
<node CREATED="1340067481412" ID="ID_1303901424" MODIFIED="1340068457182" TEXT="http://docs.python.org/reference/datamodel.html#basic-customization"/>
<node CREATED="1340121441547" ID="ID_695206809" MODIFIED="1340121446163" TEXT="http://pythonconquerstheuniverse.wordpress.com/2012/03/09/pythons-magic-methods/"/>
<node CREATED="1340068081217" ID="ID_692618020" MODIFIED="1340068084479" TEXT="Instance method objects have attributes, too: m.im_self is the instance object with the method m(), and m.im_func is the function object corresponding to the method."/>
<node CREATED="1339721064995" FOLDED="true" ID="ID_457780800" MODIFIED="1348157960472" TEXT="Passing initial values with __init__">
<node CREATED="1339721077810" ID="ID_775413055" MODIFIED="1339721099943" TEXT="The instantiation operation (&#x201c;calling&#x201d; a class object) creates an empty object. Many classes like to create objects with instances customized to a specific initial state. Therefore a class may define a special method named __init__(), like this:&#xa;&#xa;def __init__(self):&#xa;    self.data = []&#xa;&#xa;When a class defines an __init__() method, class instantiation automatically invokes __init__() for the newly-created class instance. So in this example, a new, initialized instance can be obtained by:&#xa;&#xa;x = MyClass()"/>
<node CREATED="1339721101241" ID="ID_744383599" MODIFIED="1340052777332" TEXT="Of course, the __init__() method may have arguments for greater flexibility. In that case, arguments given to the class instantiation operator are passed on to __init__(). For example,&#xa;&#xa;&gt;&gt;&gt;&#xa;&gt;&gt;&gt; class Complex:&#xa;...     def __init__(self, realpart, imagpart):&#xa;...         self.r = realpart       #The self. part is necessary&#xa;...         self.i = imagpart&#xa;...&#xa;&#xa;&gt;&gt;&gt; Complex.r&#xa;Traceback (most recent call last):&#xa;  File &quot;&lt;input&gt;&quot;, line 1, in &lt;module&gt;&#xa;AttributeError: class Complex has no attribute &apos;r&apos;&#xa;&#xa;&gt;&gt;&gt; Complex(3.0, -4.5)&#xa;&lt;__main__.Complex instance at 0x10fdb8cb0&gt;&#xa;&gt;&gt;&gt; Complex.r&#xa;Traceback (most recent call last):&#xa;  File &quot;&lt;input&gt;&quot;, line 1, in &lt;module&gt;&#xa;AttributeError: class Complex has no attribute &apos;r&apos;&#xa;&#xa;&gt;&gt;&gt; x = Complex(3.0, -4.5)&#xa;&gt;&gt;&gt; x.r, x.i&#xa;(3.0, -4.5)"/>
<node CREATED="1340068385467" ID="ID_370326458" MODIFIED="1340068388845" TEXT="&gt;&gt;&gt; x.__init__.im_self&#xa;&lt;__main__.Complex instance at 0x1045ddc68&gt;&#xa;&gt;&gt;&gt; x.__init__.im_func&#xa;&lt;function __init__ at 0x1045e1500&gt;&#xa;&gt;&gt;&gt; x.__init__.im_class&#xa;&lt;class __main__.Complex at 0x1045a2b48&gt;&#xa;"/>
</node>
<node CREATED="1340050169708" FOLDED="true" ID="ID_618400682" MODIFIED="1348157961921" TEXT="Creating documentation with __doc__">
<node CREATED="1340052411731" ID="ID_366611019" MODIFIED="1340052412264" TEXT="__doc__ is also a valid attribute, returning the docstring belonging to the class: &quot;A simple example class&quot;."/>
</node>
</node>
<node CREATED="1340056075949" FOLDED="true" ID="ID_906587857" MODIFIED="1348157968552" TEXT="Inheritance">
<node CREATED="1340056089213" ID="ID_1520737771" MODIFIED="1340056100270" TEXT="The syntax for a derived class definition looks like this:&#xa;&#xa;class DerivedClassName(BaseClassName):&#xa;    &lt;statement-1&gt;&#xa;    .&#xa;    .&#xa;    .&#xa;    &lt;statement-N&gt;"/>
<node CREATED="1340056147907" ID="ID_827854064" MODIFIED="1340056150715" TEXT="The name BaseClassName must be defined in a scope containing the derived class definition. In place of a base class name, other arbitrary expressions are also allowed. This can be useful, for example, when the base class is defined in another module:&#xa;&#xa;class DerivedClassName(modname.BaseClassName):&#xa;"/>
<node CREATED="1340057071939" ID="ID_694227783" MODIFIED="1340057148200" TEXT="Method references are resolved as follows: the corresponding class attribute is searched, descending down the chain of base classes if necessary, and the method reference is valid if this yields a function object."/>
<node CREATED="1340057230940" ID="ID_1481334265" MODIFIED="1340057231489" TEXT="Derived classes may override methods of their base classes."/>
<node CREATED="1340057281570" ID="ID_243037251" MODIFIED="1340057282144" TEXT="An overriding method in a derived class may in fact want to extend rather than simply replace the base class method of the same name. There is a simple way to call the base class method directly: just call BaseClassName.methodname(self, arguments). This is occasionally useful to clients as well. (Note that this only works if the base class is accessible as BaseClassName in the global scope.)"/>
<node CREATED="1340057303393" ID="ID_8912169" MODIFIED="1340057304127" TEXT="Use isinstance() to check an instance&#x2019;s type: isinstance(obj, int) will be True only if obj.__class__ is int or some class derived from int. "/>
<node CREATED="1340057313129" ID="ID_1770783396" MODIFIED="1340057314726" TEXT="Use issubclass() to check class inheritance: issubclass(bool, int) is True since bool is a subclass of int. However, issubclass(unicode, str) is False since unicode is not a subclass of str (they only share a common ancestor, basestring). "/>
</node>
<node CREATED="1340057367374" FOLDED="true" ID="ID_295012496" MODIFIED="1348157967216" TEXT="Multiple Inheritance">
<node CREATED="1340057377254" ID="ID_497105059" MODIFIED="1340057384030" TEXT="A class definition with multiple base classes looks like this:&#xa;&#xa;class DerivedClassName(Base1, Base2, Base3):&#xa;    &lt;statement-1&gt;&#xa;    .&#xa;    .&#xa;    .&#xa;    &lt;statement-N&gt;"/>
<node CREATED="1340057416540" ID="ID_1310311561" MODIFIED="1340057417354" TEXT="For old-style classes, the only rule is depth-first, left-to-right. Thus, if an attribute is not found in DerivedClassName, it is searched in Base1, then (recursively) in the base classes of Base1, and only if it is not found there, it is searched in Base2, and so on."/>
</node>
<node CREATED="1340067965574" FOLDED="true" ID="ID_1111383365" MODIFIED="1340679644803" TEXT="Using an empty class to bundle variables">
<node CREATED="1340067976645" ID="ID_1366306957" MODIFIED="1340067979311" TEXT="Sometimes it is useful to have a data type similar to the Pascal &#x201c;record&#x201d; or C &#x201c;struct&#x201d;, bundling together a few named data items. An empty class definition will do nicely:&#xa;&#xa;class Employee:&#xa;    pass&#xa;&#xa;john = Employee() # Create an empty employee record&#xa;&#xa;# Fill the fields of the record&#xa;john.name = &apos;John Doe&apos;&#xa;john.dept = &apos;computer lab&apos;&#xa;john.salary = 1000"/>
</node>
<node CREATED="1340067614661" FOLDED="true" ID="ID_1174151156" MODIFIED="1348157954384" TEXT="Private Variables and Class-local References">
<node CREATED="1340067643715" ID="ID_244781665" MODIFIED="1340067644442" TEXT="&#x201c;Private&#x201d; instance variables that cannot be accessed except from inside an object don&#x2019;t exist in Python. However, there is a convention that is followed by most Python code: a name prefixed with an underscore (e.g. _spam) should be treated as a non-public part of the API (whether it is a function, a method or a data member). It should be considered an implementation detail and subject to change without notice."/>
<node CREATED="1340067685075" ID="ID_1291462795" MODIFIED="1340067685746" TEXT="Since there is a valid use-case for class-private members (namely to avoid name clashes of names with names defined by subclasses), there is limited support for such a mechanism, called name mangling. Any identifier of the form __spam (at least two leading underscores, at most one trailing underscore) is textually replaced with _classname__spam, where classname is the current class name with leading underscore(s) stripped. This mangling is done without regard to the syntactic position of the identifier, as long as it occurs within the definition of a class."/>
<node CREATED="1340067899713" FOLDED="true" ID="ID_1792224950" MODIFIED="1340067917994" TEXT="Name mangling is helpful for letting subclasses override methods without breaking intraclass method calls. For example:">
<node CREATED="1340067904984" ID="ID_262082652" MODIFIED="1340067907882" TEXT="class Mapping:&#xa;    def __init__(self, iterable):&#xa;        self.items_list = []&#xa;        self.__update(iterable)&#xa;&#xa;    def update(self, iterable):&#xa;        for item in iterable:&#xa;            self.items_list.append(item)&#xa;&#xa;    __update = update   # private copy of original update() method&#xa;&#xa;class MappingSubclass(Mapping):&#xa;&#xa;    def update(self, keys, values):&#xa;        # provides new signature for update()&#xa;        # but does not break __init__()&#xa;        for item in zip(keys, values):&#xa;            self.items_list.append(item)"/>
</node>
</node>
<node CREATED="1339787059460" FOLDED="true" ID="ID_835310004" MODIFIED="1340679642043" TEXT="functions vs methods">
<node CREATED="1339787061964" ID="ID_1685810275" MODIFIED="1339787083366" TEXT="(Not Python specific)&#xa;&#xa;A function is a piece of code that is called by name. It can be passed data to operate on (ie. the parameters) and can optionally return data (the return value).&#xa;&#xa;All data that is passed to a function is explicitly passed.&#xa;&#xa;A method is a piece of code that is called by name that is associated with an object. In most respects it is identical to a function except for two key differences.&#xa;&#xa;- It is implicitly passed the object for which it was called&#xa;- It is able to operate on data that is contained within the class (remembering that an object is an instance of a class - the class is the definition, the object is an instance of that data)&#xa;"/>
</node>
</node>
<node CREATED="1340068993888" FOLDED="true" ID="ID_1872145718" MODIFIED="1348157925242" TEXT="Dictionaries">
<node CREATED="1340069043581" FOLDED="true" ID="ID_637438442" MODIFIED="1340070185685" TEXT="len(d)">
<node CREATED="1340069048374" ID="ID_811480091" MODIFIED="1340069048779" TEXT="Return the number of items in the dictionary d."/>
</node>
<node CREATED="1340069084324" FOLDED="true" ID="ID_928864990" MODIFIED="1340070185686" TEXT="del d[key]">
<node CREATED="1340069089100" ID="ID_977246974" MODIFIED="1340069089497" TEXT="Remove d[key] from d. Raises a KeyError if key is not in the map."/>
</node>
<node CREATED="1340069131338" FOLDED="true" ID="ID_679348945" MODIFIED="1340070185688" TEXT="clear()">
<node CREATED="1340069136074" ID="ID_1539984834" MODIFIED="1340069136463" TEXT="Remove all items from the dictionary."/>
</node>
<node CREATED="1340069140306" FOLDED="true" ID="ID_327589425" MODIFIED="1340070185689" TEXT="copy()">
<node CREATED="1340069155672" ID="ID_1320214200" MODIFIED="1340069156246" TEXT="Return a shallow copy of the dictionary."/>
</node>
<node CREATED="1340068996112" FOLDED="true" ID="ID_1876818778" MODIFIED="1340069031780" TEXT="Create a new dict">
<node CREATED="1340068999912" ID="ID_1041549666" MODIFIED="1340069024888" TEXT="these all return a dictionary equal to {&quot;one&quot;: 1, &quot;two&quot;: 2}:&#xa;&#xa;dict(one=1, two=2)&#xa;dict({&apos;one&apos;: 1, &apos;two&apos;: 2})&#xa;dict(zip((&apos;one&apos;, &apos;two&apos;), (1, 2)))&#xa;dict([[&apos;two&apos;, 2], [&apos;one&apos;, 1]])&#xa;"/>
</node>
<node CREATED="1340069958774" FOLDED="true" ID="ID_296586411" MODIFIED="1341955302471" TEXT="Add values to dictionary">
<node CREATED="1340069072669" FOLDED="true" ID="ID_912182246" MODIFIED="1340069978426" TEXT="d[key] = value">
<node CREATED="1340069077796" ID="ID_633966693" MODIFIED="1340069078393" TEXT="Set d[key] to value."/>
</node>
<node CREATED="1340069830171" FOLDED="true" ID="ID_1608631170" MODIFIED="1340069949855" TEXT="update([other])">
<node CREATED="1340069838930" ID="ID_1278301372" MODIFIED="1340069839536" TEXT="Update the dictionary with the key/value pairs from other, overwriting existing keys. Return None."/>
<node CREATED="1340069851178" ID="ID_76365196" MODIFIED="1340069851880" TEXT="update() accepts either another dictionary object or an iterable of key/value pairs (as tuples or other iterables of length two). If keyword arguments are specified, the dictionary is then updated with those key/value pairs: d.update(red=1, blue=2)."/>
</node>
<node CREATED="1340069161848" FOLDED="true" ID="ID_407121804" MODIFIED="1340070021963" TEXT="fromkeys(seq[, value])">
<node CREATED="1340069168008" ID="ID_1098684092" MODIFIED="1340069169302" TEXT="Create a new dictionary with keys from seq and values set to value."/>
<node CREATED="1340069175112" ID="ID_1750927329" MODIFIED="1340069175638" TEXT="fromkeys() is a class method that returns a new dictionary. value defaults to None."/>
</node>
<node CREATED="1340069764822" FOLDED="true" ID="ID_17425627" MODIFIED="1340070204220" TEXT="setdefault(key[, default])">
<node CREATED="1340069773726" ID="ID_1388875429" MODIFIED="1340069774619" TEXT="If key is in the dictionary, return its value. If not, insert key with a value of default and return default. default defaults to None."/>
</node>
</node>
<node CREATED="1340069580854" FOLDED="true" ID="ID_1182648673" MODIFIED="1340070252054" TEXT="Check if a dictionary has a key">
<node CREATED="1340069095644" FOLDED="true" ID="ID_103212965" MODIFIED="1340069598299" TEXT="key in d">
<node CREATED="1340069100251" ID="ID_715182611" MODIFIED="1340069100609" TEXT="Return True if d has a key key, else False."/>
</node>
<node CREATED="1340069106363" FOLDED="true" ID="ID_848895299" MODIFIED="1340069598301" TEXT="key not in d">
<node CREATED="1340069111147" ID="ID_1841526308" MODIFIED="1340069111616" TEXT="Equivalent to not key in d."/>
</node>
<node CREATED="1340069260660" FOLDED="true" ID="ID_1602107788" MODIFIED="1340069286248" TEXT="has_key(key) (deprecated)">
<node CREATED="1340069267180" ID="ID_1357840494" MODIFIED="1340069267914" TEXT="Test for the presence of key in the dictionary. has_key() is deprecated in favor of key in d."/>
</node>
</node>
<node CREATED="1340069603021" FOLDED="true" ID="ID_1517484387" MODIFIED="1340070217796" TEXT="Retrieve a value using a key">
<node CREATED="1340069243981" FOLDED="true" ID="ID_33869128" MODIFIED="1340069602189" TEXT="get(key[, default])">
<node CREATED="1340069251164" ID="ID_1168341949" MODIFIED="1340069252242" TEXT="Return the value for key if key is in the dictionary, else default. If default is not given, it defaults to None, so that this method never raises a KeyError."/>
</node>
<node CREATED="1340069054756" FOLDED="true" ID="ID_1233720062" MODIFIED="1340069621339" TEXT="d[key]">
<node CREATED="1340069060220" ID="ID_1071597624" MODIFIED="1340069060946" TEXT="Return the item of d with key key. Raises a KeyError if key is not in the map."/>
</node>
<node CREATED="1340069764822" FOLDED="true" ID="ID_202440280" MODIFIED="1340070204220" TEXT="setdefault(key[, default])">
<node CREATED="1340069773726" ID="ID_1438959319" MODIFIED="1340069774619" TEXT="If key is in the dictionary, return its value. If not, insert key with a value of default and return default. default defaults to None."/>
</node>
</node>
<node CREATED="1340069981460" FOLDED="true" ID="ID_804719472" MODIFIED="1340069998849" TEXT="Pop items from dictionary">
<node CREATED="1340069682769" FOLDED="true" ID="ID_1374556479" MODIFIED="1340069995589" TEXT="pop(key[, default])">
<node CREATED="1340069690137" ID="ID_1919313732" MODIFIED="1340069690671" TEXT="If key is in the dictionary, remove it and return its value, else return default. If default is not given and key is not in the dictionary, a KeyError is raised."/>
</node>
<node CREATED="1340069719168" FOLDED="true" ID="ID_68442843" MODIFIED="1340069995126" TEXT="popitem()">
<node CREATED="1340069726512" ID="ID_317111186" MODIFIED="1340069727285" TEXT="Remove and return an arbitrary (key, value) pair from the dictionary."/>
<node CREATED="1340069734262" ID="ID_675965898" MODIFIED="1340069734828" TEXT="popitem() is useful to destructively iterate over a dictionary, as often used in set algorithms. If the dictionary is empty, calling popitem() raises a KeyError."/>
</node>
</node>
<node CREATED="1340069482338" FOLDED="true" ID="ID_605053931" MODIFIED="1340070236087" TEXT="Retrieve an iterator of keys, values, or items">
<node CREATED="1340069385767" FOLDED="true" ID="ID_1449710123" MODIFIED="1340069414895" TEXT="iteritems()">
<node CREATED="1340069391807" ID="ID_861281382" MODIFIED="1340069408555" TEXT="Return an iterator over the dictionary&#x2019;s (key, value) pairs. See the note for dict.items()."/>
<node CREATED="1340069402750" ID="ID_1321291082" MODIFIED="1340069403699" TEXT="Using iteritems() while adding or deleting entries in the dictionary may raise a RuntimeError or fail to iterate over all entries."/>
</node>
<node CREATED="1340069422525" FOLDED="true" ID="ID_1529786357" MODIFIED="1340069454211" TEXT="iterkeys()">
<node CREATED="1340069428917" ID="ID_697010132" MODIFIED="1340069429523" TEXT="Return an iterator over the dictionary&#x2019;s keys. See the note for dict.items()."/>
<node CREATED="1340069435052" ID="ID_837432608" MODIFIED="1340069435674" TEXT="Using iterkeys() while adding or deleting entries in the dictionary may raise a RuntimeError or fail to iterate over all entries."/>
</node>
<node CREATED="1340069442332" FOLDED="true" ID="ID_525583401" MODIFIED="1340069454027" TEXT="itervalues()">
<node CREATED="1340069447260" ID="ID_495729333" MODIFIED="1340069447906" TEXT="Return an iterator over the dictionary&#x2019;s values. See the note for dict.items()."/>
<node CREATED="1340069452723" ID="ID_821606364" MODIFIED="1340069453321" TEXT="Using itervalues() while adding or deleting entries in the dictionary may raise a RuntimeError or fail to iterate over all entries."/>
</node>
<node CREATED="1340069116227" FOLDED="true" ID="ID_1869782848" MODIFIED="1340069673649" TEXT="iter(d) #same as iterkeys">
<node CREATED="1340069125482" ID="ID_1946691376" MODIFIED="1340069125991" TEXT="Return an iterator over the keys of the dictionary. This is a shortcut for iterkeys()."/>
</node>
</node>
<node CREATED="1340069546184" FOLDED="true" ID="ID_751203043" MODIFIED="1341887748345" TEXT="Retrieve a list of keys, values, or items">
<node CREATED="1340069274283" FOLDED="true" ID="ID_1970849345" MODIFIED="1341887747809" TEXT="items()">
<node CREATED="1340069298475" ID="ID_935833683" MODIFIED="1340069298944" TEXT="Return a copy of the dictionary&#x2019;s list of (key, value) pairs."/>
<node CREATED="1340069343089" ID="ID_49775359" MODIFIED="1340069343894" TEXT="If items(), keys(), values(), iteritems(), iterkeys(), and itervalues() are called with no intervening modifications to the dictionary, the lists will directly correspond. This allows the creation of (value, key) pairs using zip(): pairs = zip(d.values(), d.keys()). The same relationship holds for the iterkeys() and itervalues() methods: pairs = zip(d.itervalues(), d.iterkeys()) provides the same value for pairs. Another way to create the same list is pairs = [(v, k) for (k, v) in d.iteritems()]."/>
</node>
<node CREATED="1340069460963" FOLDED="true" ID="ID_235914859" MODIFIED="1340069472812" TEXT="keys()">
<node CREATED="1340069466515" ID="ID_750588069" MODIFIED="1340069471521" TEXT="Return a copy of the dictionary&#x2019;s list of keys. See the note for dict.items()."/>
</node>
<node CREATED="1340070065744" FOLDED="true" ID="ID_346470552" MODIFIED="1341887734568" TEXT="values()">
<node CREATED="1340070073360" ID="ID_528748792" MODIFIED="1340070074038" TEXT="Return a copy of the dictionary&#x2019;s list of values. See the note for dict.items()."/>
</node>
</node>
<node CREATED="1340070142468" FOLDED="true" ID="ID_1732551935" MODIFIED="1341887728304" TEXT="Retrieve a dictionary view object of keys, values, or items">
<node CREATED="1340070087527" FOLDED="true" ID="ID_1355376179" MODIFIED="1340070101832" TEXT="viewitems()">
<node CREATED="1340070097167" ID="ID_979413978" MODIFIED="1340070098181" TEXT="Return a new view of the dictionary&#x2019;s items ((key, value) pairs). See below for documentation of view objects."/>
</node>
<node CREATED="1340070109374" FOLDED="true" ID="ID_998292554" MODIFIED="1340070133781" TEXT="viewkeys()">
<node CREATED="1340070116470" ID="ID_604687957" MODIFIED="1340070117532" TEXT="Return a new view of the dictionary&#x2019;s keys. See below for documentation of view objects."/>
</node>
<node CREATED="1340070121710" FOLDED="true" ID="ID_1654579173" MODIFIED="1341887725456" TEXT="viewvalues()">
<node CREATED="1340070131774" ID="ID_852168865" MODIFIED="1340070132299" TEXT="Return a new view of the dictionary&#x2019;s values. See below for documentation of view objects."/>
</node>
</node>
<node CREATED="1340070283263" FOLDED="true" ID="ID_1730408478" MODIFIED="1340072423276" TEXT="Dictionary view objects">
<node CREATED="1340071438725" ID="ID_1153696287" MODIFIED="1340071449725" TEXT="The view methods return a list(not a copy of the list, compared to items() values()), so it is more lightweight, but reflects the current contents of dictionary."/>
<node CREATED="1340071243902" ID="ID_1471033118" MODIFIED="1340071245180" TEXT="This feature can be useful in some circumstances (for instance, one can work with a view on the keys in multiple parts of a program instead of recalculating the current list of keys each time they are needed)."/>
<node CREATED="1340072179983" FOLDED="true" ID="ID_1900966690" MODIFIED="1340072234157" TEXT="len(dictview)">
<node CREATED="1340072210981" ID="ID_1574540086" MODIFIED="1340072211579" TEXT="Return the number of entries in the dictionary."/>
</node>
<node CREATED="1340072220133" FOLDED="true" ID="ID_1079525651" MODIFIED="1340072233773" TEXT="iter(dictview)">
<node CREATED="1340072226676" ID="ID_1801563375" MODIFIED="1340072232294" TEXT="Return an iterator over the keys, values or items (represented as tuples of (key, value)) in the dictionary.&#xa;&#xa;Keys and values are iterated over in an arbitrary order which is non-random, varies across Python implementations, and depends on the dictionary&#x2019;s history of insertions and deletions. If keys, values and items views are iterated over with no intervening modifications to the dictionary, the order of items will directly correspond. This allows the creation of (value, key) pairs using zip(): pairs = zip(d.values(), d.keys()). Another way to create the same list is pairs = [(v, k) for (k, v) in d.items()].&#xa;&#xa;Iterating views while adding or deleting entries in the dictionary may raise a RuntimeError or fail to iterate over all entries."/>
</node>
<node CREATED="1340072241732" FOLDED="true" ID="ID_1884392554" MODIFIED="1340072248508" TEXT="x in dictview">
<node CREATED="1340072247428" ID="ID_970370173" MODIFIED="1340072247850" TEXT="Return True if x is in the underlying dictionary&#x2019;s keys, values or items (in the latter case, x should be a (key, value) tuple)."/>
</node>
<node CREATED="1340072308905" FOLDED="true" ID="ID_1680334913" MODIFIED="1340072412998" TEXT="Special set-like functions if all keys are unique">
<node CREATED="1340072315473" ID="ID_208050731" MODIFIED="1340072316183" TEXT="Keys views are set-like since their entries are unique and hashable. If all values are hashable, so that (key, value) pairs are unique and hashable, then the items view is also set-like. (Values views are not treated as set-like since the entries are generally not unique.) Then these set operations are available (&#x201c;other&#x201d; refers either to another view or a set):"/>
<node CREATED="1340072324121" FOLDED="true" ID="ID_825991837" MODIFIED="1340072357087" TEXT="dictview &amp; other">
<node CREATED="1340072354559" ID="ID_1212297445" MODIFIED="1340072356341" TEXT="Return the intersection of the dictview and the other object as a new set."/>
</node>
<node CREATED="1340072360927" FOLDED="true" ID="ID_23193570" MODIFIED="1340072366591" TEXT="dictview | other">
<node CREATED="1340072365439" ID="ID_871401141" MODIFIED="1340072365876" TEXT="Return the union of the dictview and the other object as a new set."/>
</node>
<node CREATED="1340072371151" FOLDED="true" ID="ID_271376311" MODIFIED="1340072377231" TEXT="dictview - other">
<node CREATED="1340072375966" ID="ID_251796719" MODIFIED="1340072376428" TEXT="Return the difference between the dictview and the other object (all elements in dictview that aren&#x2019;t in other) as a new set."/>
</node>
<node CREATED="1340072382558" FOLDED="true" ID="ID_848768493" MODIFIED="1340072393967" TEXT="dictview ^ other">
<node CREATED="1340072388182" ID="ID_715251650" MODIFIED="1340072388804" TEXT="Return the symmetric difference (all elements either in dictview or other, but not in both) of the dictview and the other object as a new set."/>
</node>
</node>
<node CREATED="1340072413381" FOLDED="true" ID="ID_1684700341" MODIFIED="1340072422965" TEXT="An example of dictionary view usage:">
<node CREATED="1340072419285" ID="ID_263721801" MODIFIED="1340072421958" TEXT="&gt;&gt;&gt; dishes = {&apos;eggs&apos;: 2, &apos;sausage&apos;: 1, &apos;bacon&apos;: 1, &apos;spam&apos;: 500}&#xa;&gt;&gt;&gt; keys = dishes.viewkeys()&#xa;&gt;&gt;&gt; values = dishes.viewvalues()&#xa;&#xa;&gt;&gt;&gt; # iteration&#xa;&gt;&gt;&gt; n = 0&#xa;&gt;&gt;&gt; for val in values:&#xa;...     n += val&#xa;&gt;&gt;&gt; print(n)&#xa;504&#xa;&#xa;&gt;&gt;&gt; # keys and values are iterated over in the same order&#xa;&gt;&gt;&gt; list(keys)&#xa;[&apos;eggs&apos;, &apos;bacon&apos;, &apos;sausage&apos;, &apos;spam&apos;]&#xa;&gt;&gt;&gt; list(values)&#xa;[2, 1, 1, 500]&#xa;&#xa;&gt;&gt;&gt; # view objects are dynamic and reflect dict changes&#xa;&gt;&gt;&gt; del dishes[&apos;eggs&apos;]&#xa;&gt;&gt;&gt; del dishes[&apos;sausage&apos;]&#xa;&gt;&gt;&gt; list(keys)&#xa;[&apos;spam&apos;, &apos;bacon&apos;]&#xa;&#xa;&gt;&gt;&gt; # set operations&#xa;&gt;&gt;&gt; keys &amp; {&apos;eggs&apos;, &apos;bacon&apos;, &apos;salad&apos;}&#xa;{&apos;bacon&apos;}"/>
</node>
</node>
</node>
<node CREATED="1340072914176" FOLDED="true" ID="ID_709026125" MODIFIED="1348157924114" TEXT="Sequence Types (Str, List, Tuple, etc.)">
<node CREATED="1340073057530" FOLDED="true" ID="ID_1809615264" MODIFIED="1342717193174" TEXT="str, unicode, list, tuple, bytearray, buffer, xrange">
<node CREATED="1340073146030" FOLDED="true" ID="ID_998584743" MODIFIED="1340073182677" TEXT="Strings">
<node CREATED="1340073074384" ID="ID_1748134987" MODIFIED="1340073074934" TEXT="String literals are written in single or double quotes: &apos;xyzzy&apos;, &quot;frobozz&quot;. See String literals for more about string literals. Unicode strings are much like strings, but are specified in the syntax using a preceding &apos;u&apos; character: u&apos;abc&apos;, u&quot;def&quot;. In addition to the functionality described here, there are also string-specific methods described in the String Methods section."/>
</node>
<node CREATED="1340073152469" FOLDED="true" ID="ID_717003014" MODIFIED="1342717192710" TEXT="Lists">
<node CREATED="1340073102387" ID="ID_956401929" MODIFIED="1340073102829" TEXT="Lists are constructed with square brackets, separating items with commas: [a, b, c]."/>
</node>
<node CREATED="1340073161285" FOLDED="true" ID="ID_1155843735" MODIFIED="1340073181525" TEXT="Tuples">
<node CREATED="1340073108704" ID="ID_1901082924" MODIFIED="1340073109828" TEXT="Tuples are constructed by the comma operator (not within square brackets), with or without enclosing parentheses, but an empty tuple must have the enclosing parentheses, such as a, b, c or (). A single item tuple must have a trailing comma, such as (d,)."/>
</node>
<node CREATED="1340073167869" FOLDED="true" ID="ID_1698415972" MODIFIED="1340073180957" TEXT="Bytearray">
<node CREATED="1340073115031" ID="ID_400758523" MODIFIED="1340073115789" TEXT="Bytearray objects are created with the built-in function bytearray()."/>
</node>
<node CREATED="1340073184148" FOLDED="true" ID="ID_1200185046" MODIFIED="1340073188444" TEXT="Buffer">
<node CREATED="1340073120039" ID="ID_859665269" MODIFIED="1340073120484" TEXT="Buffer objects are not directly supported by Python syntax, but can be created by calling the built-in function buffer(). They don&#x2019;t support concatenation or repetition."/>
</node>
<node CREATED="1340073189628" FOLDED="true" ID="ID_715836768" MODIFIED="1340073194460" TEXT="Xrange">
<node CREATED="1340073125038" ID="ID_92397397" MODIFIED="1340073125604" TEXT="Objects of type xrange are similar to buffers in that there is no specific syntax to create them, but they are created using the xrange() function. They don&#x2019;t support slicing, concatenation or repetition, and using in, not in, min() or max() on them is inefficient."/>
</node>
</node>
<node CREATED="1340073048890" FOLDED="true" ID="ID_1993072538" MODIFIED="1340073206963" TEXT="x in s">
<node CREATED="1340073205147" ID="ID_1165065358" MODIFIED="1340073205889" TEXT="True if an item of s is equal to x, else False&#x9;"/>
</node>
<node CREATED="1340073212675" FOLDED="true" ID="ID_352774114" MODIFIED="1340073287928" TEXT="x not in s">
<node CREATED="1340073219115" ID="ID_941980831" MODIFIED="1340073219824" TEXT="False if an item of s is equal to x, else True"/>
</node>
<node CREATED="1340073243401" FOLDED="true" ID="ID_199825083" MODIFIED="1340073295433" TEXT="s + t">
<node CREATED="1340073248665" ID="ID_610174673" MODIFIED="1340073249127" TEXT="the concatenation of s and t"/>
<node CREATED="1340073289184" ID="ID_1552297994" MODIFIED="1340073290349" TEXT="For performance sensitive code, it is preferable to use the str.join() method which assures consistent linear concatenation performance across versions and implementations."/>
</node>
<node CREATED="1340073303566" FOLDED="true" ID="ID_1027048485" MODIFIED="1340133797502" TEXT="s * n, n * s">
<node CREATED="1340073309839" ID="ID_1975265118" MODIFIED="1340073310708" TEXT="n shallow copies of s concatenated"/>
<node CREATED="1340133596959" ID="ID_1514931666" MODIFIED="1340133624467" TEXT="Values of n less than 0 are treated as 0 (which yields an empty sequence of the same type as s). Note also that the copies are shallow; nested structures are not copied. This often haunts new Python programmers; consider:&#xa;&#xa;&gt;&gt;&gt; lists = [[]] * 3&#xa;&gt;&gt;&gt; lists&#xa;[[], [], []]&#xa;&gt;&gt;&gt; lists[0].append(3)&#xa;&gt;&gt;&gt; lists&#xa;[[3], [3], [3]]&#xa;&#xa;What has happened is that [[]] is a one-element list containing an empty list, so all three elements of [[]] * 3 are (pointers to) this single empty list. Modifying any of the elements of lists modifies this single list."/>
<node CREATED="1340133640461" ID="ID_1709375030" MODIFIED="1340133795436" TEXT="You can create a list of different lists this way:&#xa;&#xa;&gt;&gt;&gt; lists = [[] for i in range(3)]&#xa;&gt;&gt;&gt; lists&#xa;[[], [], []]&#xa;&#xa;&gt;&gt;&gt; lists[0].append(3)&#xa;&gt;&gt;&gt; lists[1].append(5)&#xa;&gt;&gt;&gt; lists[2].append(7)&#xa;&gt;&gt;&gt; lists&#xa;[[3], [5], [7]]"/>
</node>
<node CREATED="1340133490107" FOLDED="true" ID="ID_44740847" MODIFIED="1340133880688" TEXT="s[i]">
<node CREATED="1340133496459" ID="ID_35637857" MODIFIED="1340133496985" TEXT="ith item of s, origin 0"/>
<node CREATED="1340133816549" ID="ID_820782145" MODIFIED="1340133877800" TEXT="If i or j is negative, the index is relative to the end of the string: len(s) + i is substituted. But note that -0 is still 0."/>
</node>
<node CREATED="1340133886018" FOLDED="true" ID="ID_1961701748" MODIFIED="1340134288104" TEXT="s[i:j]">
<node CREATED="1340133893985" ID="ID_653541732" MODIFIED="1340133894887" TEXT="slice of s from i to j"/>
<node CREATED="1340133919480" ID="ID_1772001339" MODIFIED="1340133920150" TEXT="If i or j is negative, the index is relative to the end of the string: len(s) + i or len(s) + j is substituted. But note that -0 is still 0."/>
<node CREATED="1340133933216" ID="ID_78409447" MODIFIED="1340133933692" TEXT="The slice of s from i to j is defined as the sequence of items with index k such that i &lt;= k &lt; j. If i or j is greater than len(s), use len(s). If i is omitted or None, use 0. If j is omitted or None, use len(s). If i is greater than or equal to j, the slice is empty."/>
<node CREATED="1340134067913" ID="ID_724892032" MODIFIED="1340134120030" TEXT="&gt;&gt;&gt; lists = [1, 2, 3, 4, 5]&#xa;&gt;&gt;&gt; lists [:3]&#xa;[1, 2, 3]&#xa;&gt;&gt;&gt; lists [3:]&#xa;[4, 5]"/>
<node CREATED="1340134251105" ID="ID_1958248556" MODIFIED="1340134253495" TEXT="&gt;&gt;&gt; lists[0:]&#xa;[1, 2, 3, 4, 5]&#xa;&gt;&gt;&gt; lists[1:]&#xa;[2, 3, 4, 5]&#xa;"/>
</node>
<node CREATED="1340133902888" FOLDED="true" ID="ID_1032901519" MODIFIED="1340134367411" TEXT="s[i:j:k]">
<node CREATED="1340133908705" ID="ID_489951473" MODIFIED="1340133910146" TEXT="slice of s from i to j with step k"/>
<node CREATED="1340133921639" ID="ID_429028878" MODIFIED="1340133921998" TEXT="If i or j is negative, the index is relative to the end of the string: len(s) + i or len(s) + j is substituted. But note that -0 is still 0."/>
<node CREATED="1340134306623" ID="ID_1490994212" MODIFIED="1340134307925" TEXT="The slice of s from i to j with step k is defined as the sequence of items with index x = i + n*k such that 0 &lt;= n &lt; (j-i)/k. In other words, the indices are i, i+k, i+2*k, i+3*k and so on, stopping when j is reached (but never including j). If i or j is greater than len(s), use len(s). If i or j are omitted or None, they become &#x201c;end&#x201d; values (which end depends on the sign of k). Note, k cannot be zero. If k is None, it is treated like 1."/>
</node>
<node CREATED="1340134376292" FOLDED="true" ID="ID_190428015" MODIFIED="1340134382164" TEXT="len(s)">
<node CREATED="1340134380572" ID="ID_942730869" MODIFIED="1340134381058" TEXT="length of s"/>
</node>
<node CREATED="1340134386612" FOLDED="true" ID="ID_238635757" MODIFIED="1340134392650" TEXT="min(s)">
<node CREATED="1340134391292" ID="ID_301546390" MODIFIED="1340134391946" TEXT="smallest item of s"/>
</node>
<node CREATED="1340134396611" FOLDED="true" ID="ID_373133138" MODIFIED="1340134402075" TEXT="max(s)">
<node CREATED="1340134400874" ID="ID_695229097" MODIFIED="1340134401521" TEXT="largest item of s"/>
</node>
<node CREATED="1340134405739" FOLDED="true" ID="ID_468292214" MODIFIED="1340305156942" TEXT="s.index(i)">
<node CREATED="1340134411474" ID="ID_862836804" MODIFIED="1340134412489" TEXT="index of the first occurence of i in s"/>
<node CREATED="1340134455353" ID="ID_1707897692" MODIFIED="1340134473269" TEXT="&gt;&gt;&gt; s = &quot;abc&quot;&#xa;&gt;&gt;&gt; s.index(&apos;d&apos;)&#xa;Traceback (most recent call last):&#xa;  File &quot;&lt;input&gt;&quot;, line 1, in &lt;module&gt;&#xa;ValueError: substring not found&#xa;&#xa;&gt;&gt;&gt; s.index(&apos;a&apos;)&#xa;0&#xa;"/>
</node>
<node CREATED="1340134417042" FOLDED="true" ID="ID_1617208541" MODIFIED="1340134425066" TEXT="s.count(i)">
<node CREATED="1340134423650" ID="ID_1170446146" MODIFIED="1340134424384" TEXT="total number of occurences of i in s"/>
</node>
</node>
<node CREATED="1340134562812" FOLDED="true" ID="ID_1040249637" MODIFIED="1348157922875" TEXT="Mutable Sequence Types (Lists &amp; Bytearrays)">
<node CREATED="1340134609818" ID="ID_1502464058" MODIFIED="1340134634430" TEXT="List and bytearray objects support additional operations that allow in-place modification of the object. Other mutable sequence types (when added to the language) should also support these operations:"/>
<node CREATED="1340134645879" FOLDED="true" ID="ID_584467153" MODIFIED="1342723288367" TEXT="s[i] = x">
<node CREATED="1340134650856" ID="ID_1843185532" MODIFIED="1340134651542" TEXT="item i of s is replaced by x"/>
</node>
<node CREATED="1340134658551" FOLDED="true" ID="ID_860327524" MODIFIED="1342723289999" TEXT="s[i:j] = t">
<node CREATED="1340134663927" ID="ID_712405979" MODIFIED="1340134664701" TEXT="slice of s from i to j is replaced by the contents of the iterable t"/>
<node CREATED="1340140272804" ID="ID_517457148" MODIFIED="1340140276680" TEXT="&gt;&gt;&gt; lists = [1, 2, 4, 5]&#xa;&gt;&gt;&gt; lists[2:2] = [3]&#xa;&gt;&gt;&gt; lists&#xa;[1, 2, 3, 4, 5]"/>
<node CREATED="1340140306937" ID="ID_33655821" MODIFIED="1340140725990" TEXT="&gt;&gt;&gt; lists = [1, 3, 3]&#xa;&gt;&gt;&gt; lists[len(lists):len(lists)] = [4, 5]&#xa;&gt;&gt;&gt; lists&#xa;[1, 3, 3, 4, 5]"/>
</node>
<node CREATED="1340134670519" FOLDED="true" ID="ID_1727109139" MODIFIED="1342723291176" TEXT="del s[i:j]">
<node CREATED="1340134678055" ID="ID_1278737909" MODIFIED="1340134678685" TEXT="same as s[i:j] = []"/>
</node>
<node CREATED="1340134685199" FOLDED="true" ID="ID_4257070" MODIFIED="1342723292528" TEXT="s[i:j:k] = t">
<node CREATED="1340134692462" ID="ID_985408730" MODIFIED="1340134693156" TEXT="the elements of s[i:j:k] are replaced by those of t"/>
<node CREATED="1340134703575" ID="ID_1833163200" MODIFIED="1340134704874" TEXT="t must have the same length as the slice it is replacing."/>
</node>
<node CREATED="1340139964664" FOLDED="true" ID="ID_1729314230" MODIFIED="1342723293888" TEXT="s.append(x)">
<node CREATED="1340140363935" ID="ID_215726324" MODIFIED="1340140366205" TEXT="&gt;&gt;&gt; lists = [1, 2, 3]&#xa;&gt;&gt;&gt; lists.append([4, 5])&#xa;&gt;&gt;&gt; lists&#xa;[1, 2, 3, [4, 5]]"/>
<node CREATED="1340140903489" ID="ID_1477671142" MODIFIED="1340140905575" TEXT="&gt;&gt;&gt; lists = [1, 2, 3]&#xa;&gt;&gt;&gt; lists.append(4)&#xa;&gt;&gt;&gt; lists&#xa;[1, 2, 3, 4]"/>
</node>
<node CREATED="1340140146736" FOLDED="true" ID="ID_1851848697" MODIFIED="1342723285487" TEXT="s.extend(x)">
<node CREATED="1340140823828" ID="ID_584244275" MODIFIED="1340140855441" TEXT="&gt;&gt;&gt; lists = [1, 2, 3]&#xa;&gt;&gt;&gt; lists.extend([4, 5])&#xa;&gt;&gt;&gt; lists&#xa;[1, 2, 3, 4, 5]&#xa;&#xa;&gt;&gt;&gt; lists.extend(6)&#xa;Traceback (most recent call last):&#xa;  File &quot;&lt;input&gt;&quot;, line 1, in &lt;module&gt;&#xa;TypeError: &apos;int&apos; object is not iterable"/>
</node>
<node CREATED="1340141019732" FOLDED="true" ID="ID_262246862" MODIFIED="1342723282551" TEXT="s.count(x)">
<node CREATED="1340141027156" ID="ID_1750305685" MODIFIED="1340141027730" TEXT="return number of i&#x2018;s for which s[i] == x"/>
</node>
<node CREATED="1340141036596" FOLDED="true" ID="ID_1889867006" MODIFIED="1340141138240" TEXT="s.index(x[, i[, j]])">
<node CREATED="1340141049643" ID="ID_1764558159" MODIFIED="1340141050289" TEXT="return smallest k such that s[k] == x and i &lt;= k &lt; j"/>
<node CREATED="1340141080594" ID="ID_59394332" MODIFIED="1340141081136" TEXT="Raises ValueError when x is not found in s. When a negative index is passed as the second or third parameter to the index() method, the list length is added, as for slice indices. If it is still negative, it is truncated to zero, as for slice indices."/>
</node>
<node CREATED="1340141147775" FOLDED="true" ID="ID_1344618222" MODIFIED="1340141748695" TEXT="s.insert(i, x)">
<node CREATED="1340141155623" ID="ID_942499360" MODIFIED="1340141156277" TEXT="same as s[i:i] = [x]"/>
<node CREATED="1340141216572" ID="ID_594801285" MODIFIED="1340141218938" TEXT="&gt;&gt;&gt; lists = [1, 2, 4]&#xa;&gt;&gt;&gt; lists.insert(2, 3)&#xa;&gt;&gt;&gt; lists&#xa;[1, 2, 3, 4]"/>
<node CREATED="1340141747366" ID="ID_716301099" MODIFIED="1340141747876" TEXT="When a negative index is passed as the first parameter to the insert() method, the list length is added, as for slice indices. If it is still negative, it is truncated to zero, as for slice indices."/>
</node>
<node CREATED="1340141729031" FOLDED="true" ID="ID_1547206103" MODIFIED="1340141844059" TEXT="s.pop([i])">
<node CREATED="1340141736878" ID="ID_285843235" MODIFIED="1340141737453" TEXT="same as x = s[i]; del s[i]; return x"/>
<node CREATED="1340141771167" ID="ID_1186179746" MODIFIED="1340141771867" TEXT="The pop() method is only supported by the list and array types. The optional argument i defaults to -1, so that by default the last item is removed and returned."/>
<node CREATED="1340141831347" ID="ID_567151060" MODIFIED="1340141834344" TEXT="&gt;&gt;&gt; lists = [1, 2, 3]&#xa;&gt;&gt;&gt; x = lists.pop()&#xa;&gt;&gt;&gt; x&#xa;3&#xa;&gt;&gt;&gt; lists&#xa;[1, 2]"/>
</node>
<node CREATED="1340141851770" FOLDED="true" ID="ID_1164573847" MODIFIED="1340141893740" TEXT="s.remove(x)">
<node CREATED="1340141859306" ID="ID_1985747438" MODIFIED="1340141859816" TEXT="same as del s[s.index(x)]"/>
<node CREATED="1340141892640" ID="ID_1312775311" MODIFIED="1340141893118" TEXT="Raises ValueError when x is not found in s. When a negative index is passed as the second or third parameter to the index() method, the list length is added, as for slice indices. If it is still negative, it is truncated to zero, as for slice indices."/>
</node>
<node CREATED="1340141900440" FOLDED="true" ID="ID_505321846" MODIFIED="1340141931608" TEXT="s.reverse()">
<node CREATED="1340141905071" ID="ID_920978554" MODIFIED="1340141905597" TEXT="reverses the items of s in place"/>
<node CREATED="1340141915415" ID="ID_552463722" MODIFIED="1340141915901" TEXT="The sort() and reverse() methods modify the list in place for economy of space when sorting or reversing a large list. To remind you that they operate by side effect, they don&#x2019;t return the sorted or reversed list."/>
</node>
<node CREATED="1340141937542" FOLDED="true" ID="ID_39249770" MODIFIED="1342723030670" TEXT="s.sort([cmp[, key[, reverse]]])">
<node CREATED="1340141943557" ID="ID_1994679520" MODIFIED="1340141943988" TEXT="sort the items of s in place"/>
<node CREATED="1340141950342" ID="ID_1813120230" MODIFIED="1340141950747" TEXT="The sort() and reverse() methods modify the list in place for economy of space when sorting or reversing a large list. To remind you that they operate by side effect, they don&#x2019;t return the sorted or reversed list."/>
<node CREATED="1340142033387" FOLDED="true" ID="ID_1191433375" MODIFIED="1340142051466" TEXT="Use a key function instead of cmp">
<node CREATED="1340141962829" ID="ID_1171198920" MODIFIED="1340141965299" TEXT="The sort() method takes optional arguments for controlling the comparisons.&#xa;&#xa;cmp specifies a custom comparison function of two arguments (list items) which should return a negative, zero or positive number depending on whether the first argument is considered smaller than, equal to, or larger than the second argument: cmp=lambda x,y: cmp(x.lower(), y.lower()). The default value is None.&#xa;&#xa;key specifies a function of one argument that is used to extract a comparison key from each list element: key=str.lower. The default value is None.&#xa;&#xa;reverse is a boolean value. If set to True, then the list elements are sorted as if each comparison were reversed.&#xa;&#xa;In general, the key and reverse conversion processes are much faster than specifying an equivalent cmp function. This is because cmp is called multiple times for each list element while key and reverse touch each element only once. Use functools.cmp_to_key() to convert an old-style cmp function to a key function."/>
</node>
<node CREATED="1340142066137" ID="ID_63463903" MODIFIED="1340142066527" TEXT="Starting with Python 2.3, the sort() method is guaranteed to be stable. A sort is stable if it guarantees not to change the relative order of elements that compare equal &#x2014; this is helpful for sorting in multiple passes (for example, sort by department, then by salary grade)."/>
<node CREATED="1340144005121" ID="ID_1005478135" MODIFIED="1340144005678" TEXT="submissions.sort(key = lambda x: x.submitted_time)"/>
<node CREATED="1342722968307" ID="ID_1076874512" MODIFIED="1342723028789" TEXT="&gt;&gt;&gt; x = [3, 2]&#xa;&gt;&gt;&gt; y = x.sort()&#xa;&gt;&gt;&gt; print x&#xa;[2, 3]&#xa;&gt;&gt;&gt; print y&#xa;None"/>
</node>
</node>
<node CREATED="1340643608308" FOLDED="true" ID="ID_1699267439" MODIFIED="1348157921490" TEXT="Sets &amp; FrozenSets">
<node CREATED="1340644045455" FOLDED="true" ID="ID_1669648063" MODIFIED="1340647201314" TEXT="Background">
<node CREATED="1340643917901" ID="ID_317294122" MODIFIED="1340643918538" TEXT="A set object is an unordered collection of distinct hashable objects. Common uses include membership testing, removing duplicates from a sequence, and computing mathematical operations such as intersection, union, difference, and symmetric difference."/>
<node CREATED="1340643941428" ID="ID_1910046897" MODIFIED="1340643942097" TEXT="Like other collections, sets support x in set, len(set), and for x in set. Being an unordered collection, sets do not record element position or order of insertion. Accordingly, sets do not support indexing, slicing, or other sequence-like behavior."/>
<node CREATED="1340643968499" ID="ID_1652422171" MODIFIED="1340643969104" TEXT="There are currently two built-in set types, set and frozenset. The set type is mutable &#x2014; the contents can be changed using methods like add() and remove(). Since it is mutable, it has no hash value and cannot be used as either a dictionary key or as an element of another set. The frozenset type is immutable and hashable &#x2014; its contents cannot be altered after it is created; it can therefore be used as a dictionary key or as an element of another set."/>
</node>
<node CREATED="1340647188706" FOLDED="true" ID="ID_1040934761" MODIFIED="1340647200657" TEXT="Creating sets">
<node CREATED="1340643998322" ID="ID_1694892096" MODIFIED="1340643999002" TEXT="As of Python 2.7, non-empty sets (not frozensets) can be created by placing a comma-separated list of elements within braces, for example: {&apos;jack&apos;, &apos;sjoerd&apos;}, in addition to the set constructor."/>
<node CREATED="1340644026768" ID="ID_1322732804" MODIFIED="1340644043610" TEXT="The constructors for both classes work the same:&#xa;&#xa;class set([iterable])&#xa;class frozenset([iterable])&#xa;&#xa;Return a new set or frozenset object whose elements are taken from iterable. The elements of a set must be hashable. To represent sets of sets, the inner sets must be frozenset objects. If iterable is not specified, a new empty set is returned."/>
</node>
<node CREATED="1340646165749" FOLDED="true" ID="ID_999708375" MODIFIED="1340646174795" TEXT="More information on using sets">
<node CREATED="1340646044435" ID="ID_966522852" MODIFIED="1340646045168" TEXT="Note, the non-operator versions of union(), intersection(), difference(), and symmetric_difference(), issubset(), and issuperset() methods will accept any iterable as an argument. In contrast, their operator based counterparts require their arguments to be sets. This precludes error-prone constructions like set(&apos;abc&apos;) &amp; &apos;cbs&apos; in favor of the more readable set(&apos;abc&apos;).intersection(&apos;cbs&apos;)."/>
<node CREATED="1340646070282" ID="ID_1680043604" MODIFIED="1340646070967" TEXT="Both set and frozenset support set to set comparisons. Two sets are equal if and only if every element of each set is contained in the other (each is a subset of the other). A set is less than another set if and only if the first set is a proper subset of the second set (is a subset, but is not equal). A set is greater than another set if and only if the first set is a proper superset of the second set (is a superset, but is not equal)."/>
<node CREATED="1340646082737" ID="ID_1647575204" MODIFIED="1340646083335" TEXT="Instances of set are compared to instances of frozenset based on their members. For example, set(&apos;abc&apos;) == frozenset(&apos;abc&apos;) returns True and so does set(&apos;abc&apos;) in set([frozenset(&apos;abc&apos;)])."/>
<node CREATED="1340646103368" ID="ID_336825519" MODIFIED="1340646103953" TEXT="The subset and equality comparisons do not generalize to a complete ordering function. For example, any two disjoint sets are not equal and are not subsets of each other, so all of the following return False: a&lt;b, a==b, or a&gt;b. Accordingly, sets do not implement the __cmp__() method."/>
<node CREATED="1340646123199" ID="ID_765104385" MODIFIED="1340646123669" TEXT="Since sets only define partial ordering (subset relationships), the output of the list.sort() method is undefined for lists of sets."/>
<node CREATED="1340646128503" ID="ID_1696851157" MODIFIED="1340646128965" TEXT="Set elements, like dictionary keys, must be hashable."/>
<node CREATED="1340646143558" ID="ID_639072676" MODIFIED="1340646144796" TEXT="Binary operations that mix set instances with frozenset return the type of the first operand. For example: frozenset(&apos;ab&apos;) | set(&apos;bc&apos;) returns an instance of frozenset."/>
</node>
<node CREATED="1340646180125" FOLDED="true" ID="ID_1401263170" MODIFIED="1340647296841" TEXT="Functions that only work on sets">
<node CREATED="1340646202900" FOLDED="true" ID="ID_1093853657" MODIFIED="1340646242306" TEXT="update(other, ...)">
<node CREATED="1340646208436" ID="ID_108959337" MODIFIED="1340646217745" TEXT="set |= other | ..."/>
<node CREATED="1340646213491" ID="ID_193372531" MODIFIED="1340646213993" TEXT="Update the set, adding elements from all others."/>
</node>
<node CREATED="1340646224946" FOLDED="true" ID="ID_605717175" MODIFIED="1340646242162" TEXT="difference_update(other, ...)">
<node CREATED="1340646229099" ID="ID_1470335699" MODIFIED="1340646229481" TEXT="set -= other | ..."/>
<node CREATED="1340646233050" ID="ID_881734697" MODIFIED="1340646233481" TEXT="Update the set, removing elements found in others."/>
</node>
<node CREATED="1340646248146" FOLDED="true" ID="ID_619051336" MODIFIED="1340646261425" TEXT="symmetric_difference_update(other)">
<node CREATED="1340646252578" ID="ID_694500228" MODIFIED="1340646253047" TEXT="set ^= other"/>
<node CREATED="1340646260641" ID="ID_271621901" MODIFIED="1340646260927" TEXT="Update the set, keeping only elements found in either set, but not in both."/>
</node>
<node CREATED="1340646270704" FOLDED="true" ID="ID_1641342479" MODIFIED="1340646276657" TEXT="add(elem)">
<node CREATED="1340646275481" ID="ID_1164562786" MODIFIED="1340646276087" TEXT="Add element elem to the set."/>
</node>
<node CREATED="1340646301296" FOLDED="true" ID="ID_577888862" MODIFIED="1340646309224" TEXT="remove(elem)">
<node CREATED="1340646308151" ID="ID_928967130" MODIFIED="1340646308725" TEXT="Remove element elem from the set. Raises KeyError if elem is not contained in the set."/>
</node>
<node CREATED="1340646314639" FOLDED="true" ID="ID_1211093759" MODIFIED="1340646321422" TEXT="discard(elem)">
<node CREATED="1340646319751" ID="ID_237825375" MODIFIED="1340646320293" TEXT="Remove element elem from the set if it is present."/>
</node>
<node CREATED="1340646324711" FOLDED="true" ID="ID_998249032" MODIFIED="1340646330967" TEXT="pop()">
<node CREATED="1340646328966" ID="ID_1466446743" MODIFIED="1340646329388" TEXT="Remove and return an arbitrary element from the set. Raises KeyError if the set is empty."/>
</node>
<node CREATED="1340646334222" FOLDED="true" ID="ID_1520166103" MODIFIED="1340647172580" TEXT="clear()">
<node CREATED="1340646338270" ID="ID_1282943236" MODIFIED="1340646338964" TEXT="Remove all elements from the set."/>
</node>
<node CREATED="1340647173091" ID="ID_1298281965" MODIFIED="1340647173849" TEXT="Note, the non-operator versions of the update(), intersection_update(), difference_update(), and symmetric_difference_update() methods will accept any iterable as an argument.  "/>
<node CREATED="1340647177090" ID="ID_722276902" MODIFIED="1340647177632" TEXT="Note, the elem argument to the __contains__(), remove(), and discard() methods may be a set. To support searching for an equivalent frozenset, the elem set is temporarily mutated during the search and then restored. During the search, the elem set should not be read or mutated since it does not have a meaningful value.  "/>
</node>
<node CREATED="1340644059935" FOLDED="true" ID="ID_918353984" MODIFIED="1340646256538" TEXT="len(s)">
<node CREATED="1340644064550" ID="ID_983186158" MODIFIED="1340644064892" TEXT="Return the cardinality of set s."/>
<node CREATED="1340644103485" ID="ID_939360756" MODIFIED="1340644106215" TEXT="&gt;&gt;&gt; x = set([1, 2, 3])&#xa;&gt;&gt;&gt; len(x)&#xa;3"/>
</node>
<node CREATED="1340644075118" FOLDED="true" ID="ID_584855158" MODIFIED="1340644227184" TEXT="x in s">
<node CREATED="1340644224960" ID="ID_1253999207" MODIFIED="1340644225776" TEXT="Test x for membership in s."/>
</node>
<node CREATED="1340644231399" FOLDED="true" ID="ID_164233271" MODIFIED="1340644236143" TEXT="x not in s">
<node CREATED="1340644235215" ID="ID_319686358" MODIFIED="1340644235581" TEXT="Test x for non-membership in s."/>
</node>
<node CREATED="1340644239815" FOLDED="true" ID="ID_804721456" MODIFIED="1340644248151" TEXT="isdisjoint(other)">
<node CREATED="1340644246735" ID="ID_835004663" MODIFIED="1340644247356" TEXT="Return True if the set has no elements in common with other. Sets are disjoint if and only if their intersection is the empty set."/>
</node>
<node CREATED="1340644258630" FOLDED="true" ID="ID_1148448712" MODIFIED="1340644352828" TEXT="issubset(other)">
<node CREATED="1340644268646" ID="ID_1209892699" MODIFIED="1340644277936" TEXT="set &lt;= other&#xa;"/>
<node CREATED="1340644289013" ID="ID_71331077" MODIFIED="1340644290001" TEXT="Test whether every element in the set is in other."/>
<node CREATED="1340644333181" ID="ID_30287125" MODIFIED="1340644348317" TEXT="&gt;&gt;&gt; x = set([1, 2, 3])&#xa;&gt;&gt;&gt; y = set([1, 2, 3, 4])&#xa;&#xa;&gt;&gt;&gt; x &lt;= y&#xa;True&#xa;&gt;&gt;&gt; y &lt;= x&#xa;False&#xa;"/>
</node>
<node CREATED="1340644359794" FOLDED="true" ID="ID_629189575" MODIFIED="1340644373763" TEXT="set &lt; other">
<node CREATED="1340644371746" ID="ID_1867791168" MODIFIED="1340644372559" TEXT="Test whether the set is a true subset of other, that is, set &lt;= other and set != other."/>
</node>
<node CREATED="1340644379921" FOLDED="true" ID="ID_810050198" MODIFIED="1340647270214" TEXT="issuperset(other)">
<node CREATED="1340644392881" ID="ID_1875963789" MODIFIED="1340647267294" TEXT="set &gt;= other"/>
<node CREATED="1340644388257" ID="ID_408256223" MODIFIED="1340644389231" TEXT="Test whether every element in other is in the set."/>
</node>
<node CREATED="1340644400272" FOLDED="true" ID="ID_913337745" MODIFIED="1340647249626" TEXT="set &gt; other">
<node CREATED="1340644404792" ID="ID_963113628" MODIFIED="1340644405206" TEXT="Test whether the set is a true superset of other, that is, set &gt;= other and set != other."/>
</node>
<node CREATED="1340645841532" FOLDED="true" ID="ID_788554050" MODIFIED="1340645905970" TEXT="union(other, ...)">
<node CREATED="1340645847131" ID="ID_454106993" MODIFIED="1340645847657" TEXT="set | other | ..."/>
<node CREATED="1340645853131" ID="ID_646431126" MODIFIED="1340645853783" TEXT="Return a new set with elements from the set and all others."/>
</node>
<node CREATED="1340645906601" FOLDED="true" ID="ID_797086073" MODIFIED="1340645946647" TEXT="intersection(other, ...)">
<node CREATED="1340645911952" ID="ID_641516480" MODIFIED="1340645912333" TEXT="set &amp; other &amp; ..."/>
<node CREATED="1340645915880" ID="ID_428875737" MODIFIED="1340645916318" TEXT="Return a new set with elements common to the set and all others."/>
</node>
<node CREATED="1340645921800" FOLDED="true" ID="ID_420777392" MODIFIED="1340645946463" TEXT="difference(other, ...)">
<node CREATED="1340645925992" ID="ID_740926499" MODIFIED="1340645926430" TEXT="set - other - ..."/>
<node CREATED="1340645936367" ID="ID_1296792020" MODIFIED="1340645936749" TEXT="Return a new set with elements in the set that are not in the others."/>
</node>
<node CREATED="1340645947135" FOLDED="true" ID="ID_707034342" MODIFIED="1340645958329" TEXT="symmetric_difference(other)">
<node CREATED="1340645951495" ID="ID_1078471167" MODIFIED="1340645951956" TEXT="set ^ other"/>
<node CREATED="1340645955751" ID="ID_1423457811" MODIFIED="1340645956166" TEXT="Return a new set with elements in either the set or other but not both."/>
</node>
<node CREATED="1340645961790" FOLDED="true" ID="ID_750544444" MODIFIED="1340646043939" TEXT="copy()">
<node CREATED="1340645967478" ID="ID_1823689150" MODIFIED="1340645967868" TEXT="Return a new set with a shallow copy of s."/>
</node>
</node>
<node CREATED="1341979432794" FOLDED="true" ID="ID_1226486795" MODIFIED="1348157901642" TEXT="RegEx">
<node CREATED="1341979567188" FOLDED="true" ID="ID_1436443221" MODIFIED="1348157901186" TEXT="Theory">
<node CREATED="1341979435655" ID="ID_880739035" MODIFIED="1341979436406" TEXT="Regular expressions can be concatenated to form new regular expressions; if A and B are both regular expressions, then AB is also a regular expression. In general, if a string p matches A and another string q matches B, the string pq will match AB. This holds unless A or B contain low precedence operations; boundary conditions between A and B; or have numbered group references. Thus, complex expressions can easily be constructed from simpler primitive expressions like the ones described here. "/>
</node>
<node CREATED="1342028565644" FOLDED="true" ID="ID_642601214" MODIFIED="1348157891347" TEXT="Basic commands">
<node CREATED="1341979563236" FOLDED="true" ID="ID_749038207" MODIFIED="1341979657952" TEXT="&apos;.&apos; -- any character">
<node CREATED="1341979590102" ID="ID_1655043667" MODIFIED="1341979590819" TEXT="(Dot.) In the default mode, this matches any character except a newline. If the DOTALL flag has been specified, this matches any character including a newline. "/>
</node>
<node CREATED="1341979607798" FOLDED="true" ID="ID_808201466" MODIFIED="1341979658379" TEXT="&apos;^&apos; -- start of string)">
<node CREATED="1341979621686" ID="ID_1069131025" MODIFIED="1341979622548" TEXT="(Caret.) Matches the start of the string, and in MULTILINE mode also matches immediately after each newline. "/>
</node>
<node CREATED="1341979667633" FOLDED="true" ID="ID_263407060" MODIFIED="1341979710819" TEXT="&apos;$&apos; -- end of string">
<node CREATED="1341979676432" ID="ID_1526690102" MODIFIED="1341979676950" TEXT="Matches the end of the string or just before the newline at the end of the string, and in MULTILINE mode also matches before a newline. foo matches both &#x2018;foo&#x2019; and &#x2018;foobar&#x2019;, while the regular expression foo$ matches only &#x2018;foo&#x2019;. More interestingly, searching for foo.$ in &apos;foo1\nfoo2\n&apos; matches &#x2018;foo2&#x2019; normally, but &#x2018;foo1&#x2019; in MULTILINE mode; searching for a single $ in &apos;foo\n&apos; will find two (empty) matches: one just before the newline, and one at the end of the string."/>
</node>
<node CREATED="1341979702138" FOLDED="true" ID="ID_1237085073" MODIFIED="1341979773868" TEXT="&apos;*&apos; -- zero or more times">
<node CREATED="1341979760172" ID="ID_1838013593" MODIFIED="1341979760553" TEXT="Causes the resulting RE to match 0 or more repetitions of the preceding RE, as many repetitions as are possible. ab* will match &#x2018;a&#x2019;, &#x2018;ab&#x2019;, or &#x2018;a&#x2019; followed by any number of &#x2018;b&#x2019;s. "/>
</node>
<node CREATED="1341979781158" FOLDED="true" ID="ID_166874692" MODIFIED="1341979790029" TEXT="&apos;+&apos; -- one or more times">
<node CREATED="1341979788837" ID="ID_80497140" MODIFIED="1341979789314" TEXT="Causes the resulting RE to match 1 or more repetitions of the preceding RE. ab+ will match &#x2018;a&#x2019; followed by any non-zero number of &#x2018;b&#x2019;s; it will not match just &#x2018;a&#x2019;. "/>
</node>
<node CREATED="1341979798645" FOLDED="true" ID="ID_1148928636" MODIFIED="1341979824919" TEXT="&apos;?&apos; -- zero or one times">
<node CREATED="1341979821775" ID="ID_1203372277" MODIFIED="1341979822356" TEXT="Causes the resulting RE to match 0 or 1 repetitions of the preceding RE. ab? will match either &#x2018;a&#x2019; or &#x2018;ab&#x2019;. "/>
</node>
<node CREATED="1341979907049" FOLDED="true" ID="ID_963417912" MODIFIED="1341979987515" TEXT="*?, +?, ?? -- non-greedy">
<node CREATED="1341979955140" ID="ID_1020618556" MODIFIED="1341979955857" TEXT="The &apos;*&apos;, &apos;+&apos;, and &apos;?&apos; qualifiers are all greedy; they match as much text as possible. Sometimes this behaviour isn&#x2019;t desired; if the RE &lt;.*&gt; is matched against &apos;&lt;H1&gt;title&lt;/H1&gt;&apos;, it will match the entire string, and not just &apos;&lt;H1&gt;&apos;. Adding &apos;?&apos; after the qualifier makes it perform the match in non-greedy or minimal fashion; as few characters as possible will be matched. Using .*? in the previous expression will match only &apos;&lt;H1&gt;&apos;."/>
</node>
<node CREATED="1341979998118" FOLDED="true" ID="ID_146442568" MODIFIED="1342381693972" TEXT="{m} -- exactly m copies">
<node CREATED="1341980031615" ID="ID_133846266" MODIFIED="1341980032524" TEXT="Specifies that exactly m copies of the previous RE should be matched; fewer matches cause the entire RE not to match. For example, a{6} will match exactly six &apos;a&apos; characters, but not five."/>
</node>
<node CREATED="1341980043672" FOLDED="true" ID="ID_190786836" MODIFIED="1341980070417" TEXT="{m,n} -- between m &amp; n copies">
<node CREATED="1341980068832" ID="ID_1899261825" MODIFIED="1341980069509" TEXT="Causes the resulting RE to match from m to n repetitions of the preceding RE, attempting to match as many repetitions as possible. For example, a{3,5} will match from 3 to 5 &apos;a&apos; characters. Omitting m specifies a lower bound of zero, and omitting n specifies an infinite upper bound. As an example, a{4,}b will match aaaab or a thousand &apos;a&apos; characters followed by a b, but not aaab. The comma may not be omitted or the modifier would be confused with the previously described form."/>
</node>
<node CREATED="1341980125195" FOLDED="true" ID="ID_1795348132" MODIFIED="1341980138012" TEXT="{m,n}? -- non-greedy">
<node CREATED="1341980136035" ID="ID_1194167419" MODIFIED="1341980136496" TEXT="Causes the resulting RE to match from m to n repetitions of the preceding RE, attempting to match as few repetitions as possible. This is the non-greedy version of the previous qualifier. For example, on the 6-character string &apos;aaaaaa&apos;, a{3,5} will match 5 &apos;a&apos; characters, while a{3,5}? will only match 3 characters."/>
</node>
<node CREATED="1342019165217" FOLDED="true" ID="ID_736454920" MODIFIED="1342028555204" TEXT="&apos;\&apos; -- escape or special sequence">
<node CREATED="1342019174681" ID="ID_106691064" MODIFIED="1342019205184" TEXT="Either escapes special characters (permitting you to match characters like &apos;*&apos;, &apos;?&apos;, and so forth), or signals a special sequence; special sequences are discussed below."/>
<node CREATED="1342019210035" ID="ID_1854739355" MODIFIED="1342019210560" TEXT="If you&#x2019;re not using a raw string to express the pattern, remember that Python also uses the backslash as an escape sequence in string literals; if the escape sequence isn&#x2019;t recognized by Python&#x2019;s parser, the backslash and subsequent character are included in the resulting string. However, if Python would recognize the resulting sequence, the backslash should be repeated twice. This is complicated and hard to understand, so it&#x2019;s highly recommended that you use raw strings for all but the simplest expressions."/>
</node>
<node CREATED="1342019457213" FOLDED="true" ID="ID_1877215124" MODIFIED="1342019504048" TEXT="&apos;|&apos; -- or">
<node CREATED="1342019480382" ID="ID_1349026551" MODIFIED="1342019498911" TEXT="A|B, where A and B can be arbitrary REs, creates a regular expression that will match either A or B. An arbitrary number of REs can be separated by the &apos;|&apos; in this way. This can be used inside groups (see below) as well."/>
<node CREATED="1342019499799" ID="ID_1428843568" MODIFIED="1342019500244" TEXT="As the target string is scanned, REs separated by &apos;|&apos; are tried from left to right. When one pattern completely matches, that branch is accepted. This means that once A matches, B will not be tested further, even if it would produce a longer overall match. In other words, the &apos;|&apos; operator is never greedy. To match a literal &apos;|&apos;, use \|, or enclose it inside a character class, as in [|]. "/>
</node>
</node>
<node CREATED="1342019267718" FOLDED="true" ID="ID_601132927" MODIFIED="1348157892667" TEXT="[] -- a set of characters">
<node CREATED="1342019298023" ID="ID_1005308598" MODIFIED="1342019298652" TEXT="Characters can be listed individually, e.g. [amk] will match &apos;a&apos;, &apos;m&apos;, or &apos;k&apos;. "/>
<node CREATED="1342019332752" ID="ID_108495832" MODIFIED="1342019333349" TEXT="Ranges of characters can be indicated by giving two characters and separating them by a &apos;-&apos;, for example [a-z] will match any lowercase ASCII letter, [0-5][0-9] will match all the two-digits numbers from 00 to 59, and [0-9A-Fa-f] will match any hexadecimal digit. If - is escaped (e.g. [a\-z]) or if it&#x2019;s placed as the first or last character (e.g. [a-]), it will match a literal &apos;-&apos;."/>
<node CREATED="1342019359457" ID="ID_1808028120" MODIFIED="1342019360007" TEXT="Special characters lose their special meaning inside sets. For example, [(+*)] will match any of the literal characters &apos;(&apos;, &apos;+&apos;, &apos;*&apos;, or &apos;)&apos;."/>
<node CREATED="1342019368058" ID="ID_716192809" MODIFIED="1342019368520" TEXT="Character classes such as \w or \S (defined below) are also accepted inside a set, although the characters they match depends on whether LOCALE or UNICODE mode is in force."/>
<node CREATED="1342019415956" ID="ID_633945469" MODIFIED="1342019416649" TEXT="Characters that are not within a range can be matched by complementing the set. If the first character of the set is &apos;^&apos;, all the characters that are not in the set will be matched. For example, [^5] will match any character except &apos;5&apos;, and [^^] will match any character except &apos;^&apos;. ^ has no special meaning if it&#x2019;s not the first character in the set."/>
<node CREATED="1342019423916" ID="ID_676637793" MODIFIED="1342019424425" TEXT="To match a literal &apos;]&apos; inside a set, precede it with a backslash, or place it at the beginning of the set. For example, both [()[\]{}] and []()[{}] will both match a parenthesis."/>
</node>
<node CREATED="1342028484889" FOLDED="true" ID="ID_768488237" MODIFIED="1348157894027" TEXT="(...) -- Groups and named groups">
<node CREATED="1342019512047" FOLDED="true" ID="ID_463839429" MODIFIED="1342019571455" TEXT="(...) -- a group">
<node CREATED="1342019562242" ID="ID_1341842398" MODIFIED="1342019563239" TEXT="Matches whatever regular expression is inside the parentheses, and indicates the start and end of a group; the contents of a group can be retrieved after a match has been performed, and can be matched later in the string with the \number special sequence, described below. To match the literals &apos;(&apos; or &apos;)&apos;, use \( or \), or enclose them inside a character class: [(] [)]."/>
</node>
<node CREATED="1342019577970" FOLDED="true" ID="ID_1992230014" MODIFIED="1342028543107" TEXT="(?...) -- extension notation">
<node CREATED="1342019632665" ID="ID_25556274" MODIFIED="1342019640506" TEXT="his is an extension notation (a &apos;?&apos; following a &apos;(&apos; is not meaningful otherwise). The first character after the &apos;?&apos; determines what the meaning and further syntax of the construct is. Extensions usually do not create a new group; (?P&lt;name&gt;...) is the only exception to this rule. Following are the currently supported extensions."/>
</node>
<node CREATED="1342019690967" FOLDED="true" ID="ID_1364744774" MODIFIED="1342019753610" TEXT="(?iLmsux)">
<node CREATED="1342019706023" ID="ID_357192325" MODIFIED="1342019706565" TEXT="(One or more letters from the set &apos;i&apos;, &apos;L&apos;, &apos;m&apos;, &apos;s&apos;, &apos;u&apos;, &apos;x&apos;.) The group matches the empty string; the letters set the corresponding flags: re.I (ignore case), re.L (locale dependent), re.M (multi-line), re.S (dot matches all), re.U (Unicode dependent), and re.X (verbose), for the entire regular expression. (The flags are described in Module Contents.) This is useful if you wish to include the flags as part of the regular expression, instead of passing a flag argument to the re.compile() function."/>
<node CREATED="1342019710120" ID="ID_387709575" MODIFIED="1342019710949" TEXT="Note that the (?x) flag changes how the expression is parsed. It should be used first in the expression string, or after one or more whitespace characters. If there are non-whitespace characters before the flag, the results are undefined.  "/>
</node>
<node CREATED="1342019754130" FOLDED="true" ID="ID_579801963" MODIFIED="1342019766042" TEXT="(?:...) -- non-capturing group">
<node CREATED="1342019764978" ID="ID_584543540" MODIFIED="1342019765471" TEXT="A non-capturing version of regular parentheses. Matches whatever regular expression is inside the parentheses, but the substring matched by the group cannot be retrieved after performing a match or referenced later in the pattern. "/>
</node>
<node CREATED="1342019773413" FOLDED="true" ID="ID_711058778" MODIFIED="1342027824869" TEXT="(?P&lt;name&gt;...) -- a named group">
<node CREATED="1342027713432" ID="ID_1435746220" MODIFIED="1342027713894" TEXT="Similar to regular parentheses, but the substring matched by the group is accessible within the rest of the regular expression via the symbolic group name name. Group names must be valid Python identifiers, and each group name must be defined only once within a regular expression. A symbolic group is also a numbered group, just as if the group were not named. So the group named id in the example below can also be referenced as the numbered group 1.  "/>
<node CREATED="1342027732074" ID="ID_999130166" MODIFIED="1342027732623" TEXT="For example, if the pattern is (?P&lt;id&gt;[a-zA-Z_]\w*), the group can be referenced by its name in arguments to methods of match objects, such as m.group(&apos;id&apos;) or m.end(&apos;id&apos;), and also by name in the regular expression itself (using (?P=id)) and replacement text given to .sub() (using \g&lt;id&gt;).  "/>
</node>
<node CREATED="1342027781467" FOLDED="true" ID="ID_1453441517" MODIFIED="1342027869727" TEXT="(?P=name) -- use text matched by a named group">
<node CREATED="1342027785580" ID="ID_1151928916" MODIFIED="1342027785921" TEXT="Matches whatever text was matched by the earlier group named name. "/>
</node>
<node CREATED="1342027795780" ID="ID_1820147626" MODIFIED="1342027809866" TEXT="(?#...) -- a comment"/>
<node CREATED="1342028324610" FOLDED="true" ID="ID_1260534466" MODIFIED="1342028392358" TEXT="(?(id/name)yes-pattern|no-pattern) -- match yes-pattern if named group exists">
<node CREATED="1342028384229" ID="ID_1719546869" MODIFIED="1342028385106" TEXT="Will try to match with yes-pattern if the group with given id or name exists, and with no-pattern if it doesn&#x2019;t. no-pattern is optional and can be omitted. For example, (&lt;)?(\w+@\w+(?:\.\w+)+)(?(1)&gt;) is a poor email matching pattern, which will match with &apos;&lt;user@host.com&gt;&apos; as well as &apos;user@host.com&apos;, but not with &apos;&lt;user@host.com&apos;."/>
</node>
</node>
<node CREATED="1342028458471" FOLDED="true" ID="ID_1885425231" MODIFIED="1342381676156" TEXT="Lookahead &amp; Lookbehind">
<node CREATED="1342027879984" FOLDED="true" ID="ID_67893966" MODIFIED="1342027927485" TEXT="(?=...) -- Lookahead assertion">
<node CREATED="1342027916753" ID="ID_720950273" MODIFIED="1342027917223" TEXT="Matches if ... matches next, but doesn&#x2019;t consume any of the string. This is called a lookahead assertion. For example, Isaac (?=Asimov) will match &apos;Isaac &apos; only if it&#x2019;s followed by &apos;Asimov&apos;."/>
</node>
<node CREATED="1342027934674" FOLDED="true" ID="ID_1948768000" MODIFIED="1342027949163" TEXT="(?!...) -- Negative lookahead assertion">
<node CREATED="1342027941981" ID="ID_469415449" MODIFIED="1342027948552" TEXT="Matches if ... doesn&#x2019;t match next. This is a negative lookahead assertion. For example, Isaac (?!Asimov) will match &apos;Isaac &apos; only if it&#x2019;s not followed by &apos;Asimov&apos;."/>
</node>
<node CREATED="1342027954219" FOLDED="true" ID="ID_468807822" MODIFIED="1342028140650" TEXT="(?&lt;=...) -- Lookbehind assertion">
<node CREATED="1342028029598" ID="ID_1918144855" MODIFIED="1342028030787" TEXT="Matches if the current position in the string is preceded by a match for ... that ends at the current position. This is called a positive lookbehind assertion. (?&lt;=abc)def will find a match in abcdef, since the lookbehind will back up 3 characters and check if the contained pattern matches. The contained pattern must only match strings of some fixed length, meaning that abc or a|b are allowed, but a* and a{3,4} are not."/>
<node CREATED="1342028069951" ID="ID_1431858485" MODIFIED="1342028105408" TEXT="Note that patterns which start with positive lookbehind assertions will not match at the beginning of the string being searched; you will most likely want to use the search() function rather than the match() function:&#xa;&#xa;&gt;&gt;&gt; import re&#xa;&gt;&gt;&gt; m = re.search(&apos;(?&lt;=abc)def&apos;, &apos;abcdef&apos;)&#xa;&gt;&gt;&gt; m.group(0)&#xa;&apos;def&apos;"/>
<node CREATED="1342028125426" ID="ID_1797137330" MODIFIED="1342028133938" TEXT="This example looks for a word following a hyphen:&#xa;&#xa;&gt;&gt;&gt; m = re.search(&apos;(?&lt;=-)\w+&apos;, &apos;spam-egg&apos;)&#xa;&gt;&gt;&gt; m.group(0)&#xa;&apos;egg&apos;"/>
</node>
<node CREATED="1342028271432" FOLDED="true" ID="ID_20391337" MODIFIED="1342028306906" TEXT="(?&lt;!...) -- Negative lookbehind">
<node CREATED="1342028295344" ID="ID_1869449474" MODIFIED="1342028297574" TEXT="Matches if the current position in the string is not preceded by a match for .... This is called a negative lookbehind assertion. Similar to positive lookbehind assertions, the contained pattern must only match strings of some fixed length. Patterns which start with negative lookbehind assertions may match at the beginning of the string being searched."/>
</node>
</node>
<node CREATED="1342028430429" FOLDED="true" ID="ID_100094765" MODIFIED="1342381678260" TEXT="Special sequences">
<node CREATED="1342028433670" ID="ID_1056739624" MODIFIED="1342028434124" TEXT="The special sequences consist of &apos;\&apos; and a character from the list below. If the ordinary character is not on the list, then the resulting RE will match the second character. For example, \$ matches the character &apos;$&apos;."/>
<node CREATED="1342028735595" FOLDED="true" ID="ID_775756967" MODIFIED="1342028764837" TEXT="\number -- match contents of a group with the same number">
<node CREATED="1342028761956" ID="ID_1938895570" MODIFIED="1342028762641" TEXT="Matches the contents of the group of the same number. Groups are numbered starting from 1. For example, (.+) \1 matches &apos;the the&apos; or &apos;55 55&apos;, but not &apos;the end&apos; (note the space after the group). This special sequence can only be used to match one of the first 99 groups. If the first digit of number is 0, or number is 3 octal digits long, it will not be interpreted as a group match, but as the character with octal value number. Inside the &apos;[&apos; and &apos;]&apos; of a character class, all numeric escapes are treated as characters."/>
</node>
<node CREATED="1342028772300" ID="ID_1361156461" MODIFIED="1342028777769" TEXT="\A -- match only at start of string"/>
<node CREATED="1342028786317" FOLDED="true" ID="ID_1531782926" MODIFIED="1342029335731" TEXT="\b -- matches empty string, but only at the beginning or end of a word">
<node CREATED="1342028857592" ID="ID_529316686" MODIFIED="1342028867621" TEXT="Matches the empty string, but only at the beginning or end of a word. A word is defined as a sequence of alphanumeric or underscore characters, so the end of a word is indicated by whitespace or a non-alphanumeric, non-underscore character. Note that formally, \b is defined as the boundary between a \w and a \W character (or vice versa), or between \w and the beginning/end of the string, so the precise set of characters deemed to be alphanumeric depends on the values of the UNICODE and LOCALE flags. For example, r&apos;\bfoo\b&apos; matches &apos;foo&apos;, &apos;foo.&apos;, &apos;(foo)&apos;, &apos;bar foo baz&apos; but not &apos;foobar&apos; or &apos;foo3&apos;. Inside a character range, \b represents the backspace character, for compatibility with Python&#x2019;s string literals."/>
</node>
<node CREATED="1342028877505" FOLDED="true" ID="ID_322814077" MODIFIED="1342028944729" TEXT="\B -- matches the empty string, but only when not at the beginning or end of a word">
<node CREATED="1342028916578" ID="ID_1998856398" MODIFIED="1342028917151" TEXT="Matches the empty string, but only when it is not at the beginning or end of a word. This means that r&apos;py\B&apos; matches &apos;python&apos;, &apos;py3&apos;, &apos;py2&apos;, but not &apos;py&apos;, &apos;py.&apos;, or &apos;py!&apos;. \B is just the opposite of \b, so is also subject to the settings of LOCALE and UNICODE."/>
</node>
<node CREATED="1342028952227" FOLDED="true" ID="ID_711577271" MODIFIED="1342028974877" TEXT="\d -- matches any decimal digit">
<node CREATED="1342028971108" ID="ID_1735736761" MODIFIED="1342028971569" TEXT="When the UNICODE flag is not specified, matches any decimal digit; this is equivalent to the set [0-9]. With UNICODE, it will match whatever is classified as a decimal digit in the Unicode character properties database."/>
</node>
<node CREATED="1342028983237" FOLDED="true" ID="ID_381931228" MODIFIED="1342028994278" TEXT="\D -- matches any non-digit character">
<node CREATED="1342028992589" ID="ID_851227299" MODIFIED="1342028993106" TEXT="When the UNICODE flag is not specified, matches any non-digit character; this is equivalent to the set [^0-9]. With UNICODE, it will match anything other than character marked as digits in the Unicode character properties database."/>
</node>
<node CREATED="1342028999893" FOLDED="true" ID="ID_1896387825" MODIFIED="1342029044400" TEXT="\s -- matches any whitespace character">
<node CREATED="1342029018951" ID="ID_169472661" MODIFIED="1342029019404" TEXT="When the UNICODE flag is not specified, it matches any whitespace character, this is equivalent to the set [ \t\n\r\f\v]. The LOCALE flag has no extra effect on matching of the space. If UNICODE is set, this will match the characters [ \t\n\r\f\v] plus whatever is classified as space in the Unicode character properties database. "/>
</node>
<node CREATED="1342029045039" FOLDED="true" ID="ID_691943786" MODIFIED="1342029058407" TEXT="\S -- matches any non-whitespace character">
<node CREATED="1342029055768" ID="ID_179117593" MODIFIED="1342029056222" TEXT="When the UNICODE flags is not specified, matches any non-whitespace character; this is equivalent to the set [^ \t\n\r\f\v] The LOCALE flag has no extra effect on non-whitespace match. If UNICODE is set, then any character not marked as space in the Unicode character properties database is matched. "/>
</node>
<node CREATED="1342029062639" FOLDED="true" ID="ID_1967721795" MODIFIED="1342029179309" TEXT="\w -- matches any alphanumeric character and underscore">
<node CREATED="1342029087409" ID="ID_617236835" MODIFIED="1342029087750" TEXT="When the LOCALE and UNICODE flags are not specified, matches any alphanumeric character and the underscore; this is equivalent to the set [a-zA-Z0-9_]. With LOCALE, it will match the set [0-9_] plus whatever characters are defined as alphanumeric for the current locale. If UNICODE is set, this will match the characters [0-9_] plus whatever is classified as alphanumeric in the Unicode character properties database."/>
</node>
<node CREATED="1342029089953" FOLDED="true" ID="ID_1543147792" MODIFIED="1342029116459" TEXT="\W -- matches any non-alphanumeric character">
<node CREATED="1342029115474" ID="ID_1526301345" MODIFIED="1342029115823" TEXT="When the LOCALE and UNICODE flags are not specified, matches any non-alphanumeric character; this is equivalent to the set [^a-zA-Z0-9_]. With LOCALE, it will match any character not in the set [0-9_], and not defined as alphanumeric for the current locale. If UNICODE is set, this will match anything other than [0-9_] plus characters classied as not alphanumeric in the Unicode character properties database."/>
</node>
<node CREATED="1342029122186" ID="ID_1300596992" MODIFIED="1342029127993" TEXT="\Z -- matches only at the end of string"/>
</node>
<node CREATED="1342029516323" FOLDED="true" ID="ID_449171688" MODIFIED="1342376942619" TEXT="re. Module Contents">
<node CREATED="1342029544108" FOLDED="true" ID="ID_1004041313" MODIFIED="1342032261483" TEXT="re.compile(pattern, flags=0)">
<node CREATED="1342030646307" ID="ID_115126010" MODIFIED="1342030647865" TEXT="Compile a regular expression pattern into a regular expression object, which can be used for matching using its match() and search() methods, described below."/>
<node CREATED="1342030677214" ID="ID_1362044111" MODIFIED="1342030678218" TEXT="The expression&#x2019;s behaviour can be modified by specifying a flags value. Values can be any of the following variables, combined using bitwise OR (the | operator).  "/>
<node CREATED="1342030686902" ID="ID_460348700" MODIFIED="1342030721511" TEXT="The sequence:&#xa;&#xa;prog = re.compile(pattern)&#xa;result = prog.match(string)&#xa;&#xa;is equivalent to:&#xa;&#xa;result = re.match(pattern, string)&#xa;&#xa;but using re.compile() and saving the resulting regular expression object for reuse is more efficient when the expression will be used several times in a single program."/>
<node CREATED="1342030751425" ID="ID_1445710533" MODIFIED="1342030756433" TEXT="Note: The compiled versions of the most recent patterns passed to re.match(), re.search() or re.compile() are cached, so programs that use only a few regular expressions at a time needn&#x2019;t worry about compiling regular expressions."/>
</node>
<node CREATED="1342031085646" FOLDED="true" ID="ID_1233995414" MODIFIED="1342102582768" TEXT="Flags">
<node CREATED="1342102574902" FOLDED="true" ID="ID_1293316086" MODIFIED="1342102580566" TEXT="Multiple Flags">
<node CREATED="1342032441464" ID="ID_126045308" MODIFIED="1342032443297" TEXT="Multiple flags can be specified by bitwise OR-ing them; re.I | re.M sets both the I and M flags, for example."/>
</node>
<node CREATED="1342030767745" FOLDED="true" ID="ID_8526318" MODIFIED="1342030776450" TEXT="re.DEBUG">
<node CREATED="1342030772761" ID="ID_1775958661" MODIFIED="1342030773318" TEXT="Display debug information about compiled expression.  "/>
</node>
<node CREATED="1342030785995" FOLDED="true" ID="ID_503303661" MODIFIED="1342032299349" TEXT="re.IGNORECASE">
<node CREATED="1342030793291" ID="ID_151101441" MODIFIED="1342030793711" TEXT="Perform case-insensitive matching; expressions like [A-Z] will match lowercase letters, too. This is not affected by the current locale."/>
<node CREATED="1342030926098" ID="ID_1945990642" MODIFIED="1342030926485" TEXT="re.I"/>
</node>
<node CREATED="1342030806658" FOLDED="true" ID="ID_1096839325" MODIFIED="1342030921760" TEXT="re.LOCALE">
<node CREATED="1342030813155" ID="ID_696476304" MODIFIED="1342030813792" TEXT="Make \w, \W, \b, \B, \s and \S dependent on the current locale."/>
<node CREATED="1342030920881" ID="ID_754718763" MODIFIED="1342030921213" TEXT="re.L"/>
</node>
<node CREATED="1342030823276" FOLDED="true" ID="ID_1637633719" MODIFIED="1342032305445" TEXT="re.MULTILINE">
<node CREATED="1342030863125" ID="ID_1917077659" MODIFIED="1342030863794" TEXT="When specified, the pattern character &apos;^&apos; matches at the beginning of the string and at the beginning of each line (immediately following each newline); and the pattern character &apos;$&apos; matches at the end of the string and at the end of each line (immediately preceding each newline). By default, &apos;^&apos; matches only at the beginning of the string, and &apos;$&apos; only at the end of the string and immediately before the newline (if any) at the end of the string."/>
<node CREATED="1342030916292" ID="ID_1288146074" MODIFIED="1342030916644" TEXT="re.M"/>
</node>
<node CREATED="1342030873493" FOLDED="true" ID="ID_946838821" MODIFIED="1342031136576" TEXT="re.DOTALL">
<node CREATED="1342030878174" ID="ID_1957054898" MODIFIED="1342030878723" TEXT="Make the &apos;.&apos; special character match any character at all, including a newline; without this flag, &apos;.&apos; will match anything except a newline.  "/>
<node CREATED="1342030911583" ID="ID_233631055" MODIFIED="1342030911908" TEXT="re.S"/>
</node>
<node CREATED="1342030885126" FOLDED="true" ID="ID_1041428335" MODIFIED="1342030906071" TEXT="re.UNICODE">
<node CREATED="1342030888902" ID="ID_429580287" MODIFIED="1342030895515" TEXT="Make \w, \W, \b, \B, \d, \D, \s and \S dependent on the Unicode character properties database."/>
<node CREATED="1342030904919" ID="ID_1024155229" MODIFIED="1342030905413" TEXT="re.U"/>
</node>
<node CREATED="1342030941833" FOLDED="true" ID="ID_1587539065" MODIFIED="1342031127060" TEXT="re.VERBOSE -- lets you use multiple lines and comments">
<node CREATED="1342030997939" ID="ID_95136837" MODIFIED="1342030998576" TEXT="This flag allows you to write regular expressions that look nicer. Whitespace within the pattern is ignored, except when in a character class or preceded by an unescaped backslash, and, when a line contains a &apos;#&apos; neither in a character class or preceded by an unescaped backslash, all characters from the leftmost such &apos;#&apos; through the end of the line are ignored."/>
<node CREATED="1342031011531" ID="ID_571993588" MODIFIED="1342031040580" TEXT="That means that the two following regular expression objects that match a decimal number are functionally equal:&#xa;&#xa;a = re.compile(r&quot;&quot;&quot;\d +  # the integral part&#xa;                   \.    # the decimal point&#xa;                   \d *  # some fractional digits&quot;&quot;&quot;, re.X)&#xa;&#xa;b = re.compile(r&quot;\d+\.\d*&quot;)"/>
</node>
</node>
<node CREATED="1342031210418" FOLDED="true" ID="ID_1440709633" MODIFIED="1342368995070" TEXT="re.search(pattern, string, flags=0)">
<node CREATED="1342031217604" ID="ID_787744852" MODIFIED="1342031226836" TEXT="Scan through string looking for a location where the regular expression pattern produces a match, and return a corresponding MatchObject instance. Return None if no position in the string matches the pattern; note that this is different from finding a zero-length match at some point in the string."/>
</node>
<node CREATED="1342031260541" FOLDED="true" ID="ID_120947563" MODIFIED="1342131728794" TEXT="re.match(pattern, string, flags=0) -- match only at beginning of line">
<node CREATED="1342031270445" ID="ID_68774698" MODIFIED="1342031271355" TEXT="If zero or more characters at the beginning of string match the regular expression pattern, return a corresponding MatchObject instance. Return None if the string does not match the pattern; note that this is different from a zero-length match."/>
<node CREATED="1342031275989" ID="ID_820751754" MODIFIED="1342031289858" TEXT="Note that even in MULTILINE mode, re.match() will only match at the beginning of the string and not at the beginning of each line."/>
<node CREATED="1342031282188" ID="ID_1119600167" MODIFIED="1342031286219" TEXT="If you want to locate a match anywhere in string, use search() instead (see also search() vs. match())."/>
</node>
<node CREATED="1342031314774" FOLDED="true" ID="ID_1398679825" MODIFIED="1342131746200" TEXT="re.split(pattern, string, maxsplit=0, flags=0)">
<node CREATED="1342031376528" ID="ID_1291156274" MODIFIED="1342031378013" TEXT="Split string by the occurrences of pattern. If capturing parentheses are used in pattern, then the text of all groups in the pattern are also returned as part of the resulting list. If maxsplit is nonzero, at most maxsplit splits occur, and the remainder of the string is returned as the final element of the list."/>
<node CREATED="1342117856487" ID="ID_1215216103" MODIFIED="1342118141117" TEXT="&gt;&gt;&gt; re.split(&apos;\W+&apos;, &apos;Words, words, words.&apos;)&#xa;[&apos;Words&apos;, &apos;words&apos;, &apos;words&apos;, &apos;&apos;]&#xa;&gt;&gt;&gt; re.split(&apos;(\W+)&apos;, &apos;Words, words, words.&apos;)&#xa;[&apos;Words&apos;, &apos;, &apos;, &apos;words&apos;, &apos;, &apos;, &apos;words&apos;, &apos;.&apos;, &apos;&apos;]&#xa;&gt;&gt;&gt; re.split(&apos;\W+&apos;, &apos;Words, words, words.&apos;, 1)&#xa;[&apos;Words&apos;, &apos;words, words.&apos;]&#xa;&gt;&gt;&gt; re.split(&apos;[a-f]+&apos;, &apos;0a3B9&apos;, flags=re.IGNORECASE)&#xa;[&apos;0&apos;, &apos;3&apos;, &apos;9&apos;]"/>
<node CREATED="1342117891768" ID="ID_1101781061" MODIFIED="1342117917724" TEXT="If there are capturing groups in the separator and it matches at the start of the string, the result will start with an empty string. The same holds for the end of the string:&#xa;&#xa;&gt;&gt;&gt; re.split(&apos;(\W+)&apos;, &apos;...words, words...&apos;)&#xa;[&apos;&apos;, &apos;...&apos;, &apos;words&apos;, &apos;, &apos;, &apos;words&apos;, &apos;...&apos;, &apos;&apos;]&#xa;&#xa;That way, separator components are always found at the same relative indices within the result list (e.g., if there&#x2019;s one capturing group in the separator, the 0th, the 2nd and so forth)."/>
<node CREATED="1342117926202" ID="ID_730730531" MODIFIED="1342117939317" TEXT="Note that split will never split a string on an empty pattern match. For example:&#xa;&#xa;&gt;&gt;&gt; re.split(&apos;x*&apos;, &apos;foo&apos;)&#xa;[&apos;foo&apos;]&#xa;&gt;&gt;&gt; re.split(&quot;(?m)^$&quot;, &quot;foo\n\nbar\n&quot;)&#xa;[&apos;foo\n\nbar\n&apos;]"/>
<node CREATED="1342117080255" ID="ID_1640063239" MODIFIED="1342117944641" TEXT="See also str.split and str.partition"/>
<node CREATED="1342131640331" ID="ID_195397898" MODIFIED="1342131648751" TEXT="&gt;&gt;&gt; s = &apos;abcabcabcabcabc&apos;&#xa;&gt;&gt;&gt; re.split(r&apos;b&apos;,s)&#xa;[&apos;a&apos;, &apos;ca&apos;, &apos;ca&apos;, &apos;ca&apos;, &apos;ca&apos;, &apos;c&apos;]"/>
<node CREATED="1342131730015" ID="ID_1230285392" MODIFIED="1342131733858" TEXT="&gt;&gt;&gt; re.split(&apos;\W+&apos;, &apos;Words, words, words.&apos;)&#xa;[&apos;Words&apos;, &apos;words&apos;, &apos;words&apos;, &apos;&apos;]&#xa;&gt;&gt;&gt; re.split(&apos;\w+&apos;, &apos;Words, words, words.&apos;)&#xa;[&apos;&apos;, &apos;, &apos;, &apos;, &apos;, &apos;.&apos;]"/>
</node>
<node CREATED="1342131434811" FOLDED="true" ID="ID_1108615610" MODIFIED="1342131659036" TEXT="re.findall(pattern, string, flags=0)">
<node CREATED="1342131435579" ID="ID_739955684" MODIFIED="1342131504803" TEXT="Return all non-overlapping matches of pattern in string, as a list of strings. The string is scanned left-to-right, and matches are returned in the order found. If one or more groups are present in the pattern, return a list of groups; this will be a list of tuples if the pattern has more than one group. Empty matches are included in the result unless they touch the beginning of another match."/>
<node CREATED="1342131625530" ID="ID_580943601" MODIFIED="1342131628414" TEXT="&gt;&gt;&gt; s = &apos;abcabcabcabcabc&apos;&#xa;&gt;&gt;&gt; re.findall(r&apos;b&apos;, s)&#xa;[&apos;b&apos;, &apos;b&apos;, &apos;b&apos;, &apos;b&apos;, &apos;b&apos;]"/>
</node>
<node CREATED="1342156487372" FOLDED="true" ID="ID_170204709" MODIFIED="1342156496022" TEXT="re.finditer(pattern, string, flags=0)">
<node CREATED="1342156494678" ID="ID_492588483" MODIFIED="1342156495260" TEXT="Return an iterator yielding MatchObject instances over all non-overlapping matches for the RE pattern in string. The string is scanned left-to-right, and matches are returned in the order found. Empty matches are included in the result unless they touch the beginning of another match."/>
</node>
<node CREATED="1342156500997" FOLDED="true" ID="ID_1288101173" MODIFIED="1342196923816" TEXT="re.sub(pattern, repl, string, count=0, flags=0)">
<node CREATED="1342189744217" ID="ID_1444261954" MODIFIED="1342189744774" TEXT="Return the string obtained by replacing the leftmost non-overlapping occurrences of pattern in string by the replacement repl. If the pattern isn&#x2019;t found, string is returned unchanged."/>
<node CREATED="1342189762642" ID="ID_456321378" MODIFIED="1342190106627" TEXT="repl can be a string or a function; if it is a string, any backslash escapes in it are processed. That is, \n is converted to a single newline character, \r is converted to a carriage return, and so forth. Unknown escapes such as \j are left alone. Backreferences, such as \6, are replaced with the substring matched by group 6 in the pattern. For example:&#xa;&#xa;&gt;&gt;&gt; re.sub(r&apos;def\s+([a-zA-Z_][a-zA-Z_0-9]*)\s*\(\s*\):&apos;,    # pattern&#xa;...        r&apos;static PyObject*\npy_\1(void)\n{&apos;,                            # replacement&#xa;...        &apos;def myfunc():&apos;)                                                         # string&#xa;&apos;static PyObject*\npy_myfunc(void)\n{&apos;"/>
<node CREATED="1342195957367" ID="ID_405361565" MODIFIED="1342195960732" TEXT="&gt;&gt;&gt; re.sub(r&apos;b&apos;, &apos;D&apos;, &apos;abcabcabc&apos;)&#xa;&apos;aDcaDcaDc&apos;"/>
<node CREATED="1342196263932" ID="ID_1610408168" MODIFIED="1342196409446" TEXT="If repl is a function, it is called for every non-overlapping occurrence of pattern. The function takes a single match object argument, and returns the replacement string. For example:&#xa;&#xa;&gt;&gt;&gt; def dashrepl(matchobj):&#xa;...     if matchobj.group(0) == &apos;-&apos;: return &apos; &apos;&#xa;...     else: return &apos;*&apos;&#xa;&gt;&gt;&gt; re.sub(&apos;-{1,2}&apos;, dashrepl, &apos;pro----gram-files&apos;)&#xa;&apos;pro**gram files&apos;"/>
<node CREATED="1342196396794" ID="ID_281947923" MODIFIED="1342196402110" TEXT="&gt;&gt;&gt; re.sub(r&apos;\sAND\s&apos;, &apos; &amp; &apos;, &apos;Baked Beans And Spam&apos;, flags=re.IGNORECASE)&#xa;&apos;Baked Beans &amp; Spam&apos;"/>
<node CREATED="1342196429667" ID="ID_681270790" MODIFIED="1342196430177" TEXT="The pattern may be a string or an RE object."/>
<node CREATED="1342196554705" ID="ID_371181625" MODIFIED="1342196555438" TEXT="The optional argument count is the maximum number of pattern occurrences to be replaced; count must be a non-negative integer. If omitted or zero, all occurrences will be replaced. Empty matches for the pattern are replaced only when not adjacent to a previous match, so sub(&apos;x*&apos;, &apos;-&apos;, &apos;abc&apos;) returns &apos;-a-b-c-&apos;."/>
<node CREATED="1342196866357" ID="ID_533286384" MODIFIED="1342196867227" TEXT="In addition to character escapes and backreferences as described above, \g&lt;name&gt; will use the substring matched by the group named name, as defined by the (?P&lt;name&gt;...) syntax. \g&lt;number&gt; uses the corresponding group number; \g&lt;2&gt; is therefore equivalent to \2, but isn&#x2019;t ambiguous in a replacement such as \g&lt;2&gt;0. \20 would be interpreted as a reference to group 20, not a reference to group 2 followed by the literal character &apos;0&apos;. The backreference \g&lt;0&gt; substitutes in the entire substring matched by the RE."/>
</node>
<node CREATED="1342196881086" FOLDED="true" ID="ID_1888368976" MODIFIED="1342196929184" TEXT="re.subn(pattern, repl, string, count=0, flags=0)">
<node CREATED="1342196887174" ID="ID_580696319" MODIFIED="1342196887771" TEXT="Perform the same operation as sub(), but return a tuple (new_string, number_of_subs_made).  "/>
<node CREATED="1342196924880" ID="ID_1845740487" MODIFIED="1342196927123" TEXT="&gt;&gt;&gt; re.subn(&apos;x*&apos;, &apos;-&apos;, &apos;abc&apos;)&#xa;(&apos;-a-b-c-&apos;, 4)"/>
</node>
<node CREATED="1342196901519" FOLDED="true" ID="ID_99040039" MODIFIED="1342197030933" TEXT="re.escape(string)">
<node CREATED="1342196939976" ID="ID_1259956591" MODIFIED="1342196940301" TEXT="Return string with all non-alphanumerics backslashed; this is useful if you want to match an arbitrary literal string that may have regular expression metacharacters in it."/>
</node>
<node CREATED="1342197039084" FOLDED="true" ID="ID_448194678" MODIFIED="1342197045077" TEXT="re.purge()">
<node CREATED="1342197042573" ID="ID_553550158" MODIFIED="1342197043660" TEXT="Clear the regular expression cache."/>
</node>
<node CREATED="1342197075078" FOLDED="true" ID="ID_76726072" MODIFIED="1342197081998" TEXT="exception re.error">
<node CREATED="1342197081126" ID="ID_526242446" MODIFIED="1342197081452" TEXT="Exception raised when a string passed to one of the functions here is not a valid regular expression (for example, it might contain unmatched parentheses) or when some other error occurs during compilation or matching. It is never an error if a string contains no match for a pattern."/>
</node>
</node>
<node CREATED="1342197238980" FOLDED="true" ID="ID_539683101" MODIFIED="1342202418845" TEXT="RE Object Methods (For using compiled REs)">
<node CREATED="1342197290519" FOLDED="true" ID="ID_1696268752" MODIFIED="1342201683741" TEXT="search(string[, pos[, endpos]])">
<node CREATED="1342197306295" ID="ID_1515079996" MODIFIED="1342197306964" TEXT="Scan through string looking for a location where this regular expression produces a match, and return a corresponding MatchObject instance. Return None if no position in the string matches the pattern; note that this is different from finding a zero-length match at some point in the string."/>
<node CREATED="1342197372762" ID="ID_814681208" MODIFIED="1342197373439" TEXT="The optional second parameter pos gives an index in the string where the search is to start; it defaults to 0. This is not completely equivalent to slicing the string; the &apos;^&apos; pattern character matches at the real beginning of the string and at positions just after a newline, but not necessarily at the index where the search is to start."/>
<node CREATED="1342201648864" ID="ID_498667073" MODIFIED="1342201649629" TEXT="The optional parameter endpos limits how far the string will be searched; it will be as if the string is endpos characters long, so only the characters from pos to endpos - 1 will be searched for a match. If endpos is less than pos, no match will be found, otherwise, if rx is a compiled regular expression object, rx.search(string, 0, 50) is equivalent to rx.search(string[:50], 0)."/>
<node CREATED="1342201681817" ID="ID_416345105" MODIFIED="1342201682422" TEXT="&gt;&gt;&gt; pattern = re.compile(&quot;d&quot;) &gt;&gt;&gt; pattern.search(&quot;dog&quot;)     # Match at index 0 &lt;_sre.SRE_Match object at ...&gt; &gt;&gt;&gt; pattern.search(&quot;dog&quot;, 1)  # No match; search doesn&apos;t include the &quot;d&quot;"/>
</node>
<node CREATED="1342201693226" FOLDED="true" ID="ID_1429641054" MODIFIED="1342201822751" TEXT="match(string[, pos[, endpos]])">
<node CREATED="1342201761837" ID="ID_1241862363" MODIFIED="1342201762273" TEXT="If zero or more characters at the beginning of string match this regular expression, return a corresponding MatchObject instance. Return None if the string does not match the pattern; note that this is different from a zero-length match."/>
<node CREATED="1342201798590" ID="ID_367915642" MODIFIED="1342201819635" TEXT="The optional pos and endpos parameters have the same meaning as for the search() method:&#xa;&#xa;&gt;&gt;&gt; pattern = re.compile(&quot;o&quot;)&#xa;&gt;&gt;&gt; pattern.match(&quot;dog&quot;)      # No match as &quot;o&quot; is not at the start of &quot;dog&quot;.&#xa;&gt;&gt;&gt; pattern.match(&quot;dog&quot;, 1)   # Match as &quot;o&quot; is the 2nd character of &quot;dog&quot;.&#xa;&lt;_sre.SRE_Match object at ...&gt;&#xa;&#xa;If you want to locate a match anywhere in string, use search() instead (see also search() vs. match())."/>
</node>
<node CREATED="1342201829759" FOLDED="true" ID="ID_1612848429" MODIFIED="1342201835656" TEXT="split(string, maxsplit=0)">
<node CREATED="1342201833832" ID="ID_634298663" MODIFIED="1342201835100" TEXT="Identical to the split() function, using the compiled pattern."/>
</node>
<node CREATED="1342201842176" FOLDED="true" ID="ID_1457788936" MODIFIED="1342201858296" TEXT="findall(string[, pos[, endpos]])">
<node CREATED="1342201850888" ID="ID_1428361630" MODIFIED="1342201851519" TEXT="Similar to the findall() function, using the compiled pattern, but also accepts optional pos and endpos parameters that limit the search region like for match()."/>
</node>
<node CREATED="1342201864217" FOLDED="true" ID="ID_1322196650" MODIFIED="1342201871953" TEXT="finditer(string[, pos[, endpos]])">
<node CREATED="1342201870569" ID="ID_113934345" MODIFIED="1342201871406" TEXT="Similar to the finditer() function, using the compiled pattern, but also accepts optional pos and endpos parameters that limit the search region like for match()."/>
</node>
<node CREATED="1342201878809" FOLDED="true" ID="ID_1287462140" MODIFIED="1342201885034" TEXT="sub(repl, string, count=0)">
<node CREATED="1342201882874" ID="ID_3256668" MODIFIED="1342201883871" TEXT="Identical to the sub() function, using the compiled pattern."/>
</node>
<node CREATED="1342201889235" FOLDED="true" ID="ID_933625375" MODIFIED="1342201898290" TEXT="subn(repl, string, count=0)">
<node CREATED="1342201895681" ID="ID_934742279" MODIFIED="1342201897015" TEXT="Identical to the subn() function, using the compiled pattern."/>
</node>
<node CREATED="1342201905506" FOLDED="true" ID="ID_1138679877" MODIFIED="1342201926539" TEXT="flags">
<node CREATED="1342201922675" ID="ID_1316308048" MODIFIED="1342201923704" TEXT="The regex matching flags. This is a combination of the flags given to compile() and any (?...) inline flags in the pattern."/>
</node>
<node CREATED="1342201933116" FOLDED="true" ID="ID_902552314" MODIFIED="1342201941004" TEXT="groups">
<node CREATED="1342201939644" ID="ID_956872548" MODIFIED="1342201940049" TEXT="The number of capturing groups in the pattern."/>
</node>
<node CREATED="1342201945516" FOLDED="true" ID="ID_841043144" MODIFIED="1342202285666" TEXT="groupindex">
<node CREATED="1342202244120" ID="ID_855764069" MODIFIED="1342202244529" TEXT="A dictionary mapping any symbolic group names defined by (?P&lt;id&gt;) to group numbers. The dictionary is empty if no symbolic groups were used in the pattern."/>
</node>
<node CREATED="1342202286266" FOLDED="true" ID="ID_691929610" MODIFIED="1342202396798" TEXT="pattern">
<node CREATED="1342202291530" ID="ID_917139636" MODIFIED="1342202291887" TEXT="The pattern string from which the RE object was compiled."/>
</node>
</node>
<node CREATED="1342202421056" FOLDED="true" ID="ID_1032013639" MODIFIED="1342380165503" TEXT="Match Objects">
<node CREATED="1342366275673" ID="ID_1147448479" MODIFIED="1342366276248" TEXT="Match Objects always have a boolean value of True, so that you can test whether e.g. match() resulted in a match with a simple if statement. They support the following methods and attributes:"/>
<node CREATED="1342366283625" FOLDED="true" ID="ID_836763391" MODIFIED="1342366369877" TEXT="expand(template)">
<node CREATED="1342366336603" ID="ID_246213151" MODIFIED="1342366337267" TEXT="Return the string obtained by doing backslash substitution on the template string template, as done by the sub() method. Escapes such as \n are converted to the appropriate characters, and numeric backreferences (\1, \2) and named backreferences (\g&lt;1&gt;, \g&lt;name&gt;) are replaced by the contents of the corresponding group."/>
</node>
<node CREATED="1342366374301" FOLDED="true" ID="ID_1547578552" MODIFIED="1342369093242" TEXT="group([group1, ...])">
<node CREATED="1342366431591" ID="ID_241187942" MODIFIED="1342366432118" TEXT="Returns one or more subgroups of the match. If there is a single argument, the result is a single string; if there are multiple arguments, the result is a tuple with one item per argument. Without arguments, group1 defaults to zero (the whole match is returned). If a groupN argument is zero, the corresponding return value is the entire matching string; if it is in the inclusive range [1..99], it is the string matching the corresponding parenthesized group. If a group number is negative or larger than the number of groups defined in the pattern, an IndexError exception is raised. If a group is contained in a part of the pattern that did not match, the corresponding result is None. If a group is contained in a part of the pattern that matched multiple times, the last match is returned."/>
<node CREATED="1342366469415" ID="ID_1532463979" MODIFIED="1342366471951" TEXT="&gt;&gt;&gt; m = re.match(r&quot;(\w+) (\w+)&quot;, &quot;Isaac Newton, physicist&quot;)&#xa;&gt;&gt;&gt; m.group(0)       # The entire match&#xa;&apos;Isaac Newton&apos;&#xa;&gt;&gt;&gt; m.group(1)       # The first parenthesized subgroup.&#xa;&apos;Isaac&apos;&#xa;&gt;&gt;&gt; m.group(2)       # The second parenthesized subgroup.&#xa;&apos;Newton&apos;&#xa;&gt;&gt;&gt; m.group(1, 2)    # Multiple arguments give us a tuple.&#xa;(&apos;Isaac&apos;, &apos;Newton&apos;)"/>
<node CREATED="1342366500530" ID="ID_1374206411" MODIFIED="1342366509457" TEXT="If the regular expression uses the (?P&lt;name&gt;...) syntax, the groupN arguments may also be strings identifying groups by their group name. If a string argument is not used as a group name in the pattern, an IndexError exception is raised.&#xa;&#xa;A moderately complicated example:&#xa;&#xa;&gt;&gt;&gt; m = re.match(r&quot;(?P&lt;first_name&gt;\w+) (?P&lt;last_name&gt;\w+)&quot;, &quot;Malcolm Reynolds&quot;)&#xa;&gt;&gt;&gt; m.group(&apos;first_name&apos;)&#xa;&apos;Malcolm&apos;&#xa;&gt;&gt;&gt; m.group(&apos;last_name&apos;)&#xa;&apos;Reynolds&apos;"/>
<node CREATED="1342366534227" ID="ID_1185854678" MODIFIED="1342366541690" TEXT="Named groups can also be referred to by their index:&#xa;&#xa;&gt;&gt;&gt; m.group(1)&#xa;&apos;Malcolm&apos;&#xa;&gt;&gt;&gt; m.group(2)&#xa;&apos;Reynolds&apos;"/>
<node CREATED="1342366545795" ID="ID_1639669730" MODIFIED="1342366568963" TEXT="If a group matches multiple times, only the last match is accessible:&#xa;&#xa;&gt;&gt;&gt; m = re.match(r&quot;(..)+&quot;, &quot;a1b2c3&quot;)  # Matches 3 times.&#xa;&gt;&gt;&gt; m.group(1)                        # Returns only the last match.&#xa;&apos;c3&apos;"/>
</node>
<node CREATED="1342366577941" FOLDED="true" ID="ID_1223189634" MODIFIED="1342377034710" TEXT="groups([default])">
<node CREATED="1342366690513" ID="ID_740972422" MODIFIED="1342366690895" TEXT="Return a tuple containing all the subgroups of the match, from 1 up to however many groups are in the pattern. The default argument is used for groups that did not participate in the match; it defaults to None. (Incompatibility note: in the original Python 1.5 release, if the tuple was one element long, a string would be returned instead. In later versions (from 1.5.1 on), a singleton tuple is returned in such cases.)"/>
<node CREATED="1342376952964" ID="ID_545347938" MODIFIED="1342376976260" TEXT="For example:&#xa;&#xa;&gt;&gt;&gt; m = re.match(r&quot;(\d+)\.(\d+)&quot;, &quot;24.1632&quot;)&#xa;&gt;&gt;&gt; m.groups()&#xa;(&apos;24&apos;, &apos;1632&apos;)"/>
<node CREATED="1342376977429" ID="ID_25399193" MODIFIED="1342377033422" TEXT="If we make the decimal place and everything after it optional, not all groups might participate in the match. These groups will default to None unless the default argument is given:  &#xa;&#xa;&gt;&gt;&gt; m = re.match(r&quot;(\d+)\.?(\d+)?&quot;, &quot;24&quot;)&#xa;&gt;&gt;&gt; m.groups()      # Second group defaults to None.&#xa;(&apos;24&apos;, None)&#xa;&gt;&gt;&gt; m.groups(&apos;0&apos;)   # Now, the second group defaults to &apos;0&apos;.&#xa;(&apos;24&apos;, &apos;0&apos;)"/>
</node>
<node CREATED="1342377335596" FOLDED="true" ID="ID_1738141145" MODIFIED="1342378051440" TEXT="groupdict([default])">
<node CREATED="1342378031968" ID="ID_1632527914" MODIFIED="1342378049584" TEXT="Return a dictionary containing all the named subgroups of the match, keyed by the subgroup name. The default argument is used for groups that did not participate in the match; it defaults to None. For example:&#xa;&#xa;&gt;&gt;&gt; m = re.match(r&quot;(?P&lt;first_name&gt;\w+) (?P&lt;last_name&gt;\w+)&quot;, &quot;Malcolm Reynolds&quot;)&#xa;&gt;&gt;&gt; m.groupdict()&#xa;{&apos;first_name&apos;: &apos;Malcolm&apos;, &apos;last_name&apos;: &apos;Reynolds&apos;}"/>
</node>
<node CREATED="1342378056057" FOLDED="true" ID="ID_481206010" MODIFIED="1342378326307" TEXT="start([group]) / end([group])">
<node CREATED="1342378065217" ID="ID_803493568" MODIFIED="1342378178021" TEXT="Return the indices of the start and end of the substring matched by group; group defaults to zero (meaning the whole matched substring). Return -1 if group exists but did not contribute to the match. For a match object m, and a group g that did contribute to the match, the substring matched by group g (equivalent to m.group(g)) is&#xa;&#xa;m.string[m.start(g):m.end(g)]&#xa;"/>
<node CREATED="1342378194415" ID="ID_1041413521" MODIFIED="1342378195461" TEXT="Note that m.start(group) will equal m.end(group) if group matched a null string. For example, after m = re.search(&apos;b(c?)&apos;, &apos;cba&apos;), m.start(0) is 1, m.end(0) is 2, m.start(1) and m.end(1) are both 2, and m.start(2) raises an IndexError exception."/>
<node CREATED="1342378261577" ID="ID_976628292" MODIFIED="1342378325219" TEXT="An example that will remove remove_this from email addresses:&#xa;&#xa;&gt;&gt;&gt; email = &quot;tony@tiremove_thisger.net&quot;&#xa;&gt;&gt;&gt; m = re.search(&quot;remove_this&quot;, email)&#xa;&gt;&gt;&gt; email[:m.start()] + email[m.end():]&#xa;&apos;tony@tiger.net&apos;"/>
</node>
<node CREATED="1342378330652" FOLDED="true" ID="ID_423690477" MODIFIED="1342378377231" TEXT="span([group])">
<node CREATED="1342378339357" ID="ID_1402963494" MODIFIED="1342378339699" TEXT="For MatchObject m, return the 2-tuple (m.start(group), m.end(group)). Note that if group did not contribute to the match, this is (-1, -1). group defaults to zero, the entire match."/>
</node>
<node CREATED="1342378381246" FOLDED="true" ID="ID_1970119281" MODIFIED="1342379622314" TEXT="pos">
<node CREATED="1342378385943" ID="ID_81419887" MODIFIED="1342378386445" TEXT="The value of pos which was passed to the search() or match() method of the RegexObject. This is the index into the string at which the RE engine started looking for a match."/>
</node>
<node CREATED="1342379627976" FOLDED="true" ID="ID_942112989" MODIFIED="1342379633410" TEXT="endpos">
<node CREATED="1342379632378" ID="ID_1816959714" MODIFIED="1342379632831" TEXT="The value of endpos which was passed to the search() or match() method of the RegexObject. This is the index into the string beyond which the RE engine will not go."/>
</node>
<node CREATED="1342379636706" FOLDED="true" ID="ID_1401806064" MODIFIED="1342379751319" TEXT="lastindex">
<node CREATED="1342379641050" ID="ID_243180320" MODIFIED="1342379641487" TEXT="The integer index of the last matched capturing group, or None if no group was matched at all. For example, the expressions (a)b, ((a)(b)), and ((ab)) will have lastindex == 1 if applied to the string &apos;ab&apos;, while the expression (a)(b) will have lastindex == 2, if applied to the same string.  "/>
</node>
<node CREATED="1342379754798" FOLDED="true" ID="ID_853744796" MODIFIED="1342379760486" TEXT="lastgroup">
<node CREATED="1342379758431" ID="ID_353082245" MODIFIED="1342379759548" TEXT="The name of the last matched capturing group, or None if the group didn&#x2019;t have a name, or if no group was matched at all."/>
</node>
<node CREATED="1342379763934" FOLDED="true" ID="ID_775061176" MODIFIED="1342379780160" TEXT="re">
<node CREATED="1342379769311" ID="ID_457434108" MODIFIED="1342379769829" TEXT="The regular expression object whose match() or search() method produced this MatchObject instance."/>
</node>
<node CREATED="1342379783064" FOLDED="true" ID="ID_417379605" MODIFIED="1342379800089" TEXT="string">
<node CREATED="1342379798208" ID="ID_137362961" MODIFIED="1342379798758" TEXT="The string passed to match() or search()."/>
</node>
</node>
</node>
</node>
<node CREATED="1336924040822" FOLDED="true" ID="ID_1672319613" MODIFIED="1348158365106" POSITION="right" TEXT="Jinja">
<node CREATED="1336924059053" FOLDED="true" ID="ID_124603323" MODIFIED="1348157878971" TEXT="Example">
<node CREATED="1336924060742" ID="ID_73884845" MODIFIED="1336924063199" TEXT="&lt;!DOCTYPE HTML PUBLIC &quot;-//W3C//DTD HTML 4.01//EN&quot;&gt;&#xa;&lt;html lang=&quot;en&quot;&gt;&#xa;&lt;head&gt;&#xa;    &lt;title&gt;My Webpage&lt;/title&gt;&#xa;&lt;/head&gt;&#xa;&lt;body&gt;&#xa;    &lt;ul id=&quot;navigation&quot;&gt;&#xa;    {% for item in navigation %}&#xa;        &lt;li&gt;&lt;a href=&quot;{{ item.href }}&quot;&gt;{{ item.caption }}&lt;/a&gt;&lt;/li&gt;&#xa;    {% endfor %}&#xa;    &lt;/ul&gt;&#xa;&#xa;    &lt;h1&gt;My Webpage&lt;/h1&gt;&#xa;    {{ a_variable }}&#xa;&lt;/body&gt;&#xa;&lt;/html&gt;"/>
</node>
<node CREATED="1336924070405" FOLDED="true" ID="ID_869649250" MODIFIED="1338323268559" TEXT="Variables">
<node CREATED="1336924076627" ID="ID_72253467" MODIFIED="1336924164941" TEXT="{{ foo.bar }}&#xa;{{ foo[&apos;bar&apos;] }}&#xa;&#xa;Both of the above do the same thing. It&#x2019;s important to know that the curly braces are not part of the variable but the print statement. If you access variables inside tags don&#x2019;t put the braces around.&#xa;&#xa;e.g. &lt;a href=foo.bar&gt;&#xa;&#xa;If a variable or attribute does not exist you will get back an undefined value. What you can do with that kind of value depends on the application configuration, the default behavior is that it evaluates to an empty string if printed and that you can iterate over it, but every other operation fails."/>
</node>
<node CREATED="1336924185736" FOLDED="true" ID="ID_1061416990" MODIFIED="1337718486823" TEXT="Implementation">
<node CREATED="1336924193559" ID="ID_340641528" MODIFIED="1336924225462" TEXT="For convenience sake foo.bar in Jinja2 does the following things on the Python layer:&#xa;&#xa;- check if there is an attribute called bar on foo.&#xa;- if there is not, check if there is an item &apos;bar&apos; in foo.&#xa;- if there is not, return an undefined object.&#xa;&#xa;foo[&apos;bar&apos;] on the other hand works mostly the same with the a small difference in the order:&#xa;&#xa;- check if there is an item &apos;bar&apos; in foo.&#xa;- if there is not, check if there is an attribute called bar on foo.&#xa;- if there is not, return an undefined object.&#xa;&#xa;This is important if an object has an item or attribute with the same name. Additionally there is the attr() filter that just looks up attributes."/>
</node>
<node CREATED="1336924296660" FOLDED="true" ID="ID_968199432" MODIFIED="1337229652005" TEXT="Filters">
<node CREATED="1336924304699" ID="ID_1430405784" MODIFIED="1336924313028" TEXT="Variables can be modified by filters. Filters are separated from the variable by a pipe symbol (|) and may have optional arguments in parentheses. Multiple filters can be chained. The output of one filter is applied to the next.&#xa;&#xa;{{ name|striptags|title }} for example will remove all HTML Tags from the name and title-cases it. Filters that accept arguments have parentheses around the arguments, like a function call. This example will join a list by commas: {{ list|join(&apos;, &apos;) }}.&#xa;&#xa;The List of Builtin Filters below describes all the builtin filters.&#xa;&#xa;"/>
</node>
<node CREATED="1336926039951" FOLDED="true" ID="ID_497719426" MODIFIED="1337229652973" TEXT="Tests">
<node CREATED="1336926041215" ID="ID_720774520" MODIFIED="1336926047746" TEXT="To test a variable or expression you add is plus the name of the test after the variable. For example to find out if a variable is defined you can do name is defined which will then return true or false depending on if name is defined.&#xa;&#xa;Tests can accept arguments too. If the test only takes one argument you can leave out the parentheses to group them. For example the following two expressions do the same:&#xa;&#xa;{% if loop.index is divisibleby 3 %}&#xa;{% if loop.index is divisibleby(3) %}&#xa;&#xa;The List of Builtin Tests below describes all the builtin tests."/>
</node>
<node CREATED="1336926066798" FOLDED="true" ID="ID_407714608" MODIFIED="1336926145012" TEXT="Comments">
<node CREATED="1336926075541" ID="ID_414112857" MODIFIED="1336926141038" TEXT="Syntax by default is set to {# ... #}&#xa;&#xa;{# note: disabled template because we no longer use this&#xa;    {% for user in users %}&#xa;        ...&#xa;    {% endfor %}&#xa;#}"/>
</node>
<node CREATED="1336926898890" FOLDED="true" ID="ID_1887666817" MODIFIED="1338702265046" TEXT="Whitespace Control">
<node CREATED="1337093137693" ID="ID_1712834328" MODIFIED="1337093146055" TEXT="In the default configuration whitespace is not further modified by the template engine, so each whitespace (spaces, tabs, newlines etc.) is returned unchanged. If the application configures Jinja to trim_blocks the first newline after a a template tag is removed automatically (like in PHP).&#xa;&#xa;But you can also strip whitespace in templates by hand. If you put an minus sign (-) to the start or end of an block (for example a for tag), a comment or variable expression you can remove the whitespaces after or before that block:&#xa;&#xa;{% for item in seq -%}&#xa;    {{ item }}&#xa;{%- endfor %}&#xa;&#xa;This will yield all elements without whitespace between them. If seq was a list of numbers from 1 to 9 the output would be 123456789.&#xa;&#xa;If Line Statements are enabled they strip leading whitespace automatically up to the beginning of the line."/>
<node CREATED="1337093020570" ID="ID_932501891" MODIFIED="1337093043590" TEXT="You must not use a whitespace between the tag and the minus sign.&#xa;&#xa;valid: {%- if foo -%}...{% endif %}&#xa;&#xa;invalid: {% - if foo - %}...{% endif %}"/>
</node>
<node CREATED="1337093156379" FOLDED="true" ID="ID_705907177" MODIFIED="1337227560624" TEXT="Escaping">
<node CREATED="1337093172219" ID="ID_482316337" MODIFIED="1337093179008" TEXT="It is sometimes desirable or even necessary to have Jinja ignore parts it would otherwise handle as variables or blocks. For example if the default syntax is used and you want to use {{ as raw string in the template and not start a variable you have to use a trick.&#xa;&#xa;The easiest way is to output the variable delimiter ({{) by using a variable expression:&#xa;&#xa;{{ &apos;{{&apos; }}&#xa;&#xa;For bigger sections it makes sense to mark a block raw. For example to put Jinja syntax as example into a template you can use this snippet:&#xa;&#xa;{% raw %}&#xa;    &lt;ul&gt;&#xa;    {% for item in seq %}&#xa;        &lt;li&gt;{{ item }}&lt;/li&gt;&#xa;    {% endfor %}&#xa;    &lt;/ul&gt;&#xa;{% endraw %}"/>
</node>
<node CREATED="1337093183283" FOLDED="true" ID="ID_1958109693" MODIFIED="1337097959985" TEXT="Line Statements">
<node CREATED="1337093262975" ID="ID_302196739" MODIFIED="1337093272180" TEXT="If line statements are enabled by the application it&#x2019;s possible to mark a line as a statement. For example if the line statement prefix is configured to # the following two examples are equivalent:&#xa;&#xa;&lt;ul&gt;&#xa;# for item in seq&#xa;    &lt;li&gt;{{ item }}&lt;/li&gt;&#xa;# endfor&#xa;&lt;/ul&gt;&#xa;&#xa;&lt;ul&gt;&#xa;{% for item in seq %}&#xa;    &lt;li&gt;{{ item }}&lt;/li&gt;&#xa;{% endfor %}&#xa;&lt;/ul&gt;&#xa;&#xa;The line statement prefix can appear anywhere on the line as long as no text precedes it. For better readability statements that start a block (such as for, if, elif etc.) may end with a colon:&#xa;&#xa;# for item in seq:&#xa;    ...&#xa;# endfor"/>
<node CREATED="1337093317084" ID="ID_525635696" MODIFIED="1337093320586" TEXT="Line statements can span multiple lines if there are open parentheses, braces or brackets:&#xa;&#xa;&lt;ul&gt;&#xa;# for href, caption in [(&apos;index.html&apos;, &apos;Index&apos;),&#xa;                        (&apos;about.html&apos;, &apos;About&apos;)]:&#xa;    &lt;li&gt;&lt;a href=&quot;{{ href }}&quot;&gt;{{ caption }}&lt;/a&gt;&lt;/li&gt;&#xa;# endfor&#xa;&lt;/ul&gt;"/>
</node>
<node CREATED="1337093327556" FOLDED="true" ID="ID_600192350" MODIFIED="1339629822716" TEXT="Template Inheritance">
<node CREATED="1337093375226" FOLDED="true" ID="ID_87574822" MODIFIED="1337229659957" TEXT="Block tags: A child may override this part of template">
<node CREATED="1337093363995" ID="ID_297339389" MODIFIED="1337093373696" TEXT="This template, which we&#x2019;ll call base.html, defines a simple HTML skeleton document that you might use for a simple two-column page. It&#x2019;s the job of &#x201c;child&#x201d; templates to fill the empty blocks with content:&#xa;&#xa;&lt;!DOCTYPE HTML PUBLIC &quot;-//W3C//DTD HTML 4.01//EN&quot;&gt;&#xa;&lt;html lang=&quot;en&quot;&gt;&#xa;&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;&#xa;&lt;head&gt;&#xa;    {% block head %}&#xa;    &lt;link rel=&quot;stylesheet&quot; href=&quot;style.css&quot; /&gt;&#xa;    &lt;title&gt;{% block title %}{% endblock %} - My Webpage&lt;/title&gt;&#xa;    {% endblock %}&#xa;&lt;/head&gt;&#xa;&lt;body&gt;&#xa;    &lt;div id=&quot;content&quot;&gt;{% block content %}{% endblock %}&lt;/div&gt;&#xa;    &lt;div id=&quot;footer&quot;&gt;&#xa;        {% block footer %}&#xa;        &amp;copy; Copyright 2008 by &lt;a href=&quot;http://domain.invalid/&quot;&gt;you&lt;/a&gt;.&#xa;        {% endblock %}&#xa;    &lt;/div&gt;&#xa;&lt;/body&gt;&#xa;&#xa;In this example, the {% block %} tags define four blocks that child templates can fill in. All the block tag does is to tell the template engine that a child template may override those portions of the template."/>
</node>
<node CREATED="1337093440775" FOLDED="true" ID="ID_1465221512" MODIFIED="1337229675436" TEXT="Child template: extends base template">
<node CREATED="1337093466902" ID="ID_255590151" MODIFIED="1337093476587" TEXT="A child template might look like this:&#xa;&#xa;{% extends &quot;base.html&quot; %}&#xa;{% block title %}Index{% endblock %}&#xa;{% block head %}&#xa;    {{ super() }}&#xa;    &lt;style type=&quot;text/css&quot;&gt;&#xa;        .important { color: #336699; }&#xa;    &lt;/style&gt;&#xa;{% endblock %}&#xa;{% block content %}&#xa;    &lt;h1&gt;Index&lt;/h1&gt;&#xa;    &lt;p class=&quot;important&quot;&gt;&#xa;      Welcome on my awesome homepage.&#xa;    &lt;/p&gt;&#xa;{% endblock %}&#xa;&#xa;The {% extends %} tag is the key here. It tells the template engine that this template &#x201c;extends&#x201d; another template. When the template system evaluates this template, first it locates the parent. The extends tag should be the first tag in the template. Everything before it is printed out normally and may cause confusion. For details about this behavior and how to take advantage of it, see Null-Master Fallback.&#xa;&#xa;The filename of the template depends on the template loader. For example the FileSystemLoader allows you to access other templates by giving the filename. You can access templates in subdirectories with an slash:&#xa;&#xa;{% extends &quot;layout/default.html&quot; %}&#xa;But this behavior can depend on the application embedding Jinja. Note that since the child template doesn&#x2019;t define the footer block, the value from the parent template is used instead.&#xa;&#xa;You can&#x2019;t define multiple {% block %} tags with the same name in the same template. This limitation exists because a block tag works in &#x201c;both&#x201d; directions. That is, a block tag doesn&#x2019;t just provide a hole to fill - it also defines the content that fills the hole in the parent. If there were two similarly-named {% block %} tags in a template, that template&#x2019;s parent wouldn&#x2019;t know which one of the blocks&#x2019; content to use.&#xa;&#xa;If you want to print a block multiple times you can however use the special self variable and call the block with that name:&#xa;&#xa;&lt;title&gt;{% block title %}{% endblock %}&lt;/title&gt;&#xa;&lt;h1&gt;{{ self.title() }}&lt;/h1&gt;&#xa;{% block body %}{% endblock %}"/>
</node>
<node CREATED="1337093751050" FOLDED="true" ID="ID_264714867" MODIFIED="1339629822269" TEXT="Super: gives back results of parent block">
<node CREATED="1337093763409" ID="ID_723973140" MODIFIED="1337093766407" TEXT="It&#x2019;s possible to render the contents of the parent block by calling super. This gives back the results of the parent block:&#xa;&#xa;{% block sidebar %}&#xa;    &lt;h3&gt;Table Of Contents&lt;/h3&gt;&#xa;    ...&#xa;    {{ super() }}&#xa;{% endblock %}"/>
</node>
<node CREATED="1337093781169" FOLDED="true" ID="ID_1458040287" MODIFIED="1337093797790" TEXT="Named end-block tags: for better readability">
<node CREATED="1337093792096" ID="ID_1805241429" MODIFIED="1337093796493" TEXT="Jinja2 allows you to put the name of the block after the end tag for better readability:&#xa;&#xa;{% block sidebar %}&#xa;    {% block inner_sidebar %}&#xa;        ...&#xa;    {% endblock inner_sidebar %}&#xa;{% endblock sidebar %}&#xa;&#xa;However the name after the endblock word must match the block name."/>
</node>
<node CREATED="1337093891116" FOLDED="true" ID="ID_1001801635" MODIFIED="1337093984880" TEXT="Block Nesting and Scope">
<node CREATED="1337093964785" ID="ID_969390137" MODIFIED="1337093983397" TEXT="Blocks can be nested for more complex layouts. However per default blocks may not access variables from outer scopes:&#xa;&#xa;{% for item in seq %}&#xa;    &lt;li&gt;{% block loop_item %}{{ item }}{% endblock %}&lt;/li&gt;&#xa;{% endfor %}&#xa;&#xa;This example would output empty &lt;li&gt; items because item is unavailable inside the block. The reason for this is that if the block is replaced by a child template a variable would appear that was not defined in the block or passed to the context.&#xa;&#xa;Starting with Jinja 2.2 you can explicitly specify that variables are available in a block by setting the block to &#x201c;scoped&#x201d; by adding the scoped modifier to a block declaration:&#xa;&#xa;{% for item in seq %}&#xa;    &lt;li&gt;{% block loop_item scoped %}{{ item }}{% endblock %}&lt;/li&gt;&#xa;{% endfor %}&#xa;&#xa;When overriding a block the scoped modifier does not have to be provided."/>
</node>
</node>
<node CREATED="1337095037482" FOLDED="true" ID="ID_310956443" MODIFIED="1338327470468" TEXT="IF / FOR">
<node CREATED="1337095054713" FOLDED="true" ID="ID_1417755076" MODIFIED="1338327470164" TEXT="FOR">
<node CREATED="1337095057361" ID="ID_1314861351" MODIFIED="1337095074854" TEXT="Loop over each item in a sequence. For example, to display a list of users provided in a variable called users:&#xa;&#xa;&lt;h1&gt;Members&lt;/h1&gt;&#xa;&lt;ul&gt;&#xa;{% for user in users %}&#xa;  &lt;li&gt;{{ user.username|e }}&lt;/li&gt;&#xa;{% endfor %}&#xa;&lt;/ul&gt;"/>
<node CREATED="1337095085344" ID="ID_589886858" MODIFIED="1337095228335" TEXT="Inside of a for loop block you can access some special variables:&#xa;&#xa;Variable&#x9;&#x9;Description&#xa;loop.index&#x9;      The current iteration of the loop. (1 indexed)&#xa;loop.index0&#x9;    The current iteration of the loop. (0 indexed)&#xa;loop.revindex&#x9;  The number of iterations from the end of the loop (1 indexed)&#xa;loop.revindex0&#x9;The number of iterations from the end of the loop (0 indexed)&#xa;loop.first&#x9;&#x9;True if first iteration.&#xa;loop.last&#x9;&#x9; True if last iteration.&#xa;loop.length&#x9;      The number of items in the sequence.&#xa;loop.cycle&#x9;        A helper function to cycle between a list of sequences. See the explanation below."/>
<node CREATED="1337095252416" ID="ID_1572414833" MODIFIED="1337095269773" TEXT="Within a for-loop, it&#x2019;s possible to cycle among a list of strings/variables each time through the loop by using the special loop.cycle helper:&#xa;&#xa;{% for row in rows %}&#xa;    &lt;li class=&quot;{{ loop.cycle(&apos;odd&apos;, &apos;even&apos;) }}&quot;&gt;{{ row }}&lt;/li&gt;&#xa;{% endfor %}"/>
</node>
<node CREATED="1337095348788" FOLDED="true" ID="ID_1124921183" MODIFIED="1338324660688" TEXT="IF">
<node CREATED="1337095375907" ID="ID_453099585" MODIFIED="1337095378801" TEXT="The if statement in Jinja is comparable with the if statements of Python. In the simplest form you can use it to test if a variable is defined, not empty or not false:&#xa;&#xa;{% if users %}&#xa;&lt;ul&gt;&#xa;{% for user in users %}&#xa;    &lt;li&gt;{{ user.username|e }}&lt;/li&gt;&#xa;{% endfor %}&#xa;&lt;/ul&gt;&#xa;{% endif %}"/>
<node CREATED="1337095388306" ID="ID_1888861321" MODIFIED="1337095394016" TEXT="For multiple branches elif and else can be used like in Python. You can use more complex Expressions there too:&#xa;&#xa;{% if kenny.sick %}&#xa;    Kenny is sick.&#xa;{% elif kenny.dead %}&#xa;    You killed Kenny!  You bastard!!!&#xa;{% else %}&#xa;    Kenny looks okay --- so far&#xa;{% endif %}&#xa;&#xa;If can also be used as inline expression and for loop filtering."/>
</node>
<node CREATED="1337098126804" FOLDED="true" ID="ID_348383354" MODIFIED="1338324604252" TEXT="Inline IF">
<node CREATED="1337098128956" ID="ID_1079597398" MODIFIED="1337098137281" TEXT="It is also possible to use inline if expressions. These are useful in some situations. For example you can use this to extend from one template if a variable is defined, otherwise from the default layout template:&#xa;&#xa;{% extends layout_template if layout_template is defined else &apos;master.html&apos; %}&#xa;&#xa;The general syntax is &lt;do something&gt; if &lt;something is true&gt; else &lt;do something else&gt;.&#xa;&#xa;The else part is optional. If not provided the else block implicitly evaluates into an undefined object:&#xa;&#xa;{{ &apos;[%s]&apos; % page.title if page.title }}"/>
</node>
</node>
<node CREATED="1337095455944" FOLDED="true" ID="ID_717212705" MODIFIED="1337096402444" TEXT="Macros (functions)">
<node CREATED="1337095460439" ID="ID_1623033735" MODIFIED="1337095491156" TEXT="Macros are comparable with functions in regular programming languages. They are useful to put often used idioms into reusable functions to not repeat yourself.&#xa;&#xa;Here a small example of a macro that renders a form element:&#xa;&#xa;{% macro input(name, value=&apos;&apos;, type=&apos;text&apos;, size=20) -%}&#xa;    &lt;input type=&quot;{{ type }}&quot; name=&quot;{{ name }}&quot; value=&quot;{{&#xa;        value|e }}&quot; size=&quot;{{ size }}&quot;&gt;&#xa;{%- endmacro %}&#xa;&#xa;The macro can then be called like a function in the namespace:&#xa;&#xa;&lt;p&gt;{{ input(&apos;username&apos;) }}&lt;/p&gt;&#xa;&lt;p&gt;{{ input(&apos;password&apos;, type=&apos;password&apos;) }}&lt;/p&gt;&#xa;&#xa;If the macro was defined in a different template you have to import it first.&#xa;&#xa;"/>
<node CREATED="1337095559185" FOLDED="true" ID="ID_1235019136" MODIFIED="1337095612722" TEXT="Special variables for macros">
<node CREATED="1337095566123" ID="ID_486838828" MODIFIED="1337095574312" TEXT="varargs&#xa;If more positional arguments are passed to the macro than accepted by the macro they end up in the special varargs variable as list of values.&#xa;&#xa;kwargs&#xa;Like varargs but for keyword arguments. All unconsumed keyword arguments are stored in this special variable.&#xa;&#xa;caller&#xa;If the macro was called from a call tag the caller is stored in this variable as macro which can be called."/>
</node>
<node CREATED="1337095613265" FOLDED="true" ID="ID_772430268" MODIFIED="1337095633752" TEXT="Attributes for macros">
<node CREATED="1337095616977" ID="ID_267801965" MODIFIED="1337095632174" TEXT="Macros also expose some of their internal details. The following attributes are available on a macro object:&#xa;&#xa;name&#xa;The name of the macro. {{ input.name }} will print input.&#xa;arguments&#xa;A tuple of the names of arguments the macro accepts.&#xa;&#xa;defaults&#xa;A tuple of default values.&#xa;&#xa;catch_kwargs&#xa;This is true if the macro accepts extra keyword arguments (ie: accesses the special kwargs variable).&#xa;&#xa;catch_varargs&#xa;This is true if the macro accepts extra positional arguments (ie: accesses the special varargs variable).&#xa;&#xa;caller&#xa;This is true if the macro accesses the special caller variable and may be called from a call tag."/>
</node>
</node>
<node CREATED="1337096279060" FOLDED="true" ID="ID_18882906" MODIFIED="1338702217640" TEXT="Filters">
<node CREATED="1337096280524" ID="ID_915814052" MODIFIED="1337096283513" TEXT="Filter sections allow you to apply regular Jinja2 filters on a block of template data. Just wrap the code in the special filter section:&#xa;&#xa;{% filter upper %}&#xa;    This text becomes uppercase&#xa;{% endfilter %}"/>
</node>
<node CREATED="1337096396254" FOLDED="true" ID="ID_234350602" MODIFIED="1338702216008" TEXT="Assignments">
<node CREATED="1337096398295" ID="ID_1589430614" MODIFIED="1337096400732" TEXT="Inside code blocks you can also assign values to variables. Assignments at top level (outside of blocks, macros or loops) are exported from the template like top level macros and can be imported by other templates.&#xa;&#xa;Assignments use the set tag and can have multiple targets:&#xa;&#xa;{% set navigation = [(&apos;index.html&apos;, &apos;Index&apos;), (&apos;about.html&apos;, &apos;About&apos;)] %}&#xa;{% set key, value = call_something() %}"/>
</node>
<node CREATED="1337097933660" FOLDED="true" ID="ID_1817171937" MODIFIED="1337098237736" TEXT="Include / Import">
<node CREATED="1337096460612" FOLDED="true" ID="ID_1175256607" MODIFIED="1337096468414" TEXT="Include">
<node CREATED="1337096462132" ID="ID_1030680347" MODIFIED="1337096467001" TEXT="The include statement is useful to include a template and return the rendered contents of that file into the current namespace:&#xa;&#xa;{% include &apos;header.html&apos; %}&#xa;    Body&#xa;{% include &apos;footer.html&apos; %}&#xa;Included templates have access to the variables of the active context by default. For more details about context behavior of imports and includes see Import Context Behavior.&#xa;&#xa;From Jinja 2.2 onwards you can mark an include with ignore missing in which case Jinja will ignore the statement if the template to be ignored does not exist. When combined with with or without context it has to be placed before the context visibility statement. Here some valid examples:&#xa;&#xa;{% include &quot;sidebar.html&quot; ignore missing %}&#xa;{% include &quot;sidebar.html&quot; ignore missing with context %}&#xa;{% include &quot;sidebar.html&quot; ignore missing without context %}"/>
</node>
<node CREATED="1337096928671" FOLDED="true" ID="ID_1910995218" MODIFIED="1337097945337" TEXT="Import">
<node CREATED="1337096930304" ID="ID_1819878119" MODIFIED="1337096940885" TEXT="Jinja2 supports putting often used code into macros. These macros can go into different templates and get imported from there. This works similar to the import statements in Python. It&#x2019;s important to know that imports are cached and imported templates don&#x2019;t have access to the current template variables, just the globals by defualt. For more details about context behavior of imports and includes see Import Context Behavior.&#xa;&#xa;There are two ways to import templates. You can import the complete template into a variable or request specific macros / exported variables from it.&#xa;&#xa;Imagine we have a helper module that renders forms (called forms.html):&#xa;&#xa;{% macro input(name, value=&apos;&apos;, type=&apos;text&apos;) -%}&#xa;    &lt;input type=&quot;{{ type }}&quot; value=&quot;{{ value|e }}&quot; name=&quot;{{ name }}&quot;&gt;&#xa;{%- endmacro %}&#xa;&#xa;{%- macro textarea(name, value=&apos;&apos;, rows=10, cols=40) -%}&#xa;    &lt;textarea name=&quot;{{ name }}&quot; rows=&quot;{{ rows }}&quot; cols=&quot;{{ cols&#xa;        }}&quot;&gt;{{ value|e }}&lt;/textarea&gt;&#xa;{%- endmacro %}&#xa;&#xa;The easiest and most flexible is importing the whole module into a variable. That way you can access the attributes:&#xa;&#xa;{% import &apos;forms.html&apos; as forms %}&#xa;&lt;dl&gt;&#xa;    &lt;dt&gt;Username&lt;/dt&gt;&#xa;    &lt;dd&gt;{{ forms.input(&apos;username&apos;) }}&lt;/dd&gt;&#xa;    &lt;dt&gt;Password&lt;/dt&gt;&#xa;    &lt;dd&gt;{{ forms.input(&apos;password&apos;, type=&apos;password&apos;) }}&lt;/dd&gt;&#xa;&lt;/dl&gt;&#xa;&lt;p&gt;{{ forms.textarea(&apos;comment&apos;) }}&lt;/p&gt;"/>
<node CREATED="1337096980101" ID="ID_55015690" MODIFIED="1337097922627" TEXT="Alternatively you can import names from the template into the current namespace:&#xa;&#xa;{% from &apos;forms.html&apos; import input as input_field, textarea %}&#xa;&lt;dl&gt;&#xa;    &lt;dt&gt;Username&lt;/dt&gt;&#xa;    &lt;dd&gt;{{ input_field(&apos;username&apos;) }}&lt;/dd&gt;&#xa;    &lt;dt&gt;Password&lt;/dt&gt;&#xa;    &lt;dd&gt;{{ input_field(&apos;password&apos;, type=&apos;password&apos;) }}&lt;/dd&gt;&#xa;&lt;/dl&gt;&#xa;&lt;p&gt;{{ textarea(&apos;comment&apos;) }}&lt;/p&gt;&#xa;&#xa;Macros and variables starting with one or more underscores are private and cannot be imported."/>
</node>
<node CREATED="1337097904115" FOLDED="true" ID="ID_227539133" MODIFIED="1337097915565" TEXT="Import Context Behaviour">
<node CREATED="1337097911605" ID="ID_1816266932" MODIFIED="1337097914466" TEXT="Per default included templates are passed the current context and imported templates not. The reason for this is that imports unlike includes are cached as imports are often used just as a module that holds macros.&#xa;&#xa;This however can be changed of course explicitly. By adding with context or without context to the import/include directive the current context can be passed to the template and caching is disabled automatically.&#xa;&#xa;Here two examples:&#xa;&#xa;{% from &apos;forms.html&apos; import input with context %}&#xa;{% include &apos;header.html&apos; without context %}"/>
</node>
</node>
<node CREATED="1337098185385" FOLDED="true" ID="ID_664020466" MODIFIED="1337227564272" TEXT="Example printing a list of links">
<node CREATED="1337098190616" ID="ID_571680337" MODIFIED="1337098193903" TEXT="[&#x2018;list&#x2019;, &#x2018;of&#x2019;, &#x2018;objects&#x2019;]:&#xa;Everything between two brackets is a list. Lists are useful to store sequential data in or to iterate over them. For example you can easily create a list of links using lists and tuples with a for loop:&#xa;&#xa;&lt;ul&gt;&#xa;{% for href, caption in [(&apos;index.html&apos;, &apos;Index&apos;), (&apos;about.html&apos;, &apos;About&apos;),&#xa;                         (&apos;downloads.html&apos;, &apos;Downloads&apos;)] %}&#xa;    &lt;li&gt;&lt;a href=&quot;{{ href }}&quot;&gt;{{ caption }}&lt;/a&gt;&lt;/li&gt;&#xa;{% endfor %}&#xa;&lt;/ul&gt;"/>
</node>
<node CREATED="1337098238262" FOLDED="true" ID="ID_752913499" MODIFIED="1337227566761" TEXT="Built-in Filters">
<node CREATED="1337098249742" FOLDED="true" ID="ID_1012576596" MODIFIED="1337098285957" TEXT="abs(number)">
<node CREATED="1337098259070" ID="ID_621758683" MODIFIED="1337098259642" TEXT="Return the absolute value of the argument.  "/>
</node>
<node CREATED="1337098272836" FOLDED="true" ID="ID_1072442258" MODIFIED="1337098285741" TEXT="attr(obj, name)">
<node CREATED="1337098280845" ID="ID_519392638" MODIFIED="1337098284522" TEXT="Get an attribute of an object. foo|attr(&quot;bar&quot;) works like foo[&quot;bar&quot;] just that always an attribute is returned and items are not looked up.&#xa;&#xa;See Notes on subscriptions for more details."/>
</node>
<node CREATED="1337098293116" FOLDED="true" ID="ID_219690493" MODIFIED="1337098350330" TEXT="batch(value, linecount, fill_with=None)">
<node CREATED="1337098300436" ID="ID_1587646436" MODIFIED="1337098304545" TEXT="A filter that batches items. It works pretty much like slice just the other way round. It returns a list of lists with the given number of items. If you provide a second parameter this is used to fill missing items. See this example:&#xa;&#xa;&lt;table&gt;&#xa;{%- for row in items|batch(3, &apos;&amp;nbsp;&apos;) %}&#xa;  &lt;tr&gt;&#xa;  {%- for column in row %}&#xa;    &lt;td&gt;{{ column }}&lt;/td&gt;&#xa;  {%- endfor %}&#xa;  &lt;/tr&gt;&#xa;{%- endfor %}&#xa;&lt;/table&gt;"/>
</node>
<node CREATED="1337098357689" FOLDED="true" ID="ID_1805411435" MODIFIED="1337098372465" TEXT="capitalize(s)">
<node CREATED="1337098361985" ID="ID_1823155690" MODIFIED="1337098363190" TEXT="Capitalize a value. The first character will be uppercase, all others lowercase.  "/>
</node>
<node CREATED="1337098373105" FOLDED="true" ID="ID_1056872688" MODIFIED="1337098378721" TEXT="center(value, width=80)">
<node CREATED="1337098377712" ID="ID_1244710754" MODIFIED="1337098378085" TEXT="Centers the value in a field of a given width.  "/>
</node>
<node CREATED="1337098385336" FOLDED="true" ID="ID_1529759439" MODIFIED="1337098425791" TEXT="default(value, default_value=u&apos;&apos;, boolean=False)">
<node CREATED="1337098397960" ID="ID_245607870" MODIFIED="1337098415349" TEXT="If the value is undefined it will return the passed default value, otherwise the value of the variable:&#xa;&#xa;{{ my_variable|default(&apos;my_variable is not defined&apos;) }}&#xa;This will output the value of my_variable if the variable was defined, otherwise &apos;my_variable is not defined&apos;. If you want to use default with variables that evaluate to false you have to set the second parameter to true:&#xa;&#xa;{{ &apos;&apos;|default(&apos;the string was empty&apos;, true) }}&#xa;&#xa;Aliases :&#x9;d"/>
</node>
<node CREATED="1337098436398" FOLDED="true" ID="ID_614991091" MODIFIED="1337098508673" TEXT="dictsort(value, case_sensitive=False, by=&apos;key&apos;)">
<node CREATED="1337098444885" ID="ID_1194468040" MODIFIED="1337098454051" TEXT="Sort a dict and yield (key, value) pairs. Because python dicts are unsorted you may want to use this function to order them by either key or value:&#xa;&#xa;{% for item in mydict|dictsort %}&#xa;    sort the dict by key, case insensitive&#xa;&#xa;{% for item in mydict|dicsort(true) %}&#xa;    sort the dict by key, case sensitive&#xa;&#xa;{% for item in mydict|dictsort(false, &apos;value&apos;) %}&#xa;    sort the dict by key, case insensitive, sorted&#xa;    normally and ordered by value."/>
</node>
<node CREATED="1337098514818" FOLDED="true" ID="ID_917726214" MODIFIED="1337098527964" TEXT="escape(s)">
<node CREATED="1337098518851" ID="ID_325415943" MODIFIED="1337098522736" TEXT="Convert the characters &amp;, &lt;, &gt;, &#x2018;, and &#x201d; in string s to HTML-safe sequences. Use this if you need to display text that might contain such characters in HTML. Marks return value as markup string.&#xa;&#xa;Aliases :&#x9;e"/>
</node>
<node CREATED="1337098541665" FOLDED="true" ID="ID_1975164090" MODIFIED="1337098551033" TEXT="filesizeformat(value, binary=False)">
<node CREATED="1337098546873" ID="ID_1555203523" MODIFIED="1337098548278" TEXT="Format the value like a &#x2018;human-readable&#x2019; file size (i.e. 13 kB, 4.1 MB, 102 Bytes, etc). Per default decimal prefixes are used (Mega, Giga, etc.), if the second parameter is set to True the binary prefixes are used (Mebi, Gibi).  "/>
</node>
<node CREATED="1337098582920" FOLDED="true" ID="ID_652070640" MODIFIED="1337098592871" TEXT="first(seq)">
<node CREATED="1337098587695" ID="ID_104489558" MODIFIED="1337098588060" TEXT="Return the first item of a sequence."/>
</node>
<node CREATED="1337098593391" FOLDED="true" ID="ID_5086112" MODIFIED="1337098602047" TEXT="float(value, default=0.0)">
<node CREATED="1337098600446" ID="ID_1174678798" MODIFIED="1337098600788" TEXT="Convert the value into a floating point number. If the conversion doesn&#x2019;t work it will return 0.0. You can override this default using the first parameter."/>
</node>
<node CREATED="1337098606614" FOLDED="true" ID="ID_1277503847" MODIFIED="1337098615404" TEXT="forceescape(value)">
<node CREATED="1337098611486" ID="ID_1179941757" MODIFIED="1337098612163" TEXT="Enforce HTML escaping. This will probably double escape variables."/>
</node>
<node CREATED="1337098620886" FOLDED="true" ID="ID_1717675735" MODIFIED="1337098639445" TEXT="format(value, *args, **kwargs)">
<node CREATED="1337098625374" ID="ID_1845767360" MODIFIED="1337098631523" TEXT="Apply python string formatting on an object:&#xa;&#xa;{{ &quot;%s - %s&quot;|format(&quot;Hello?&quot;, &quot;Foo!&quot;) }}&#xa;    -&gt; Hello? - Foo!"/>
</node>
<node CREATED="1337098645876" FOLDED="true" ID="ID_1124853184" MODIFIED="1337098668970" TEXT="groupby(value, attribute)">
<node CREATED="1337098658483" ID="ID_821922789" MODIFIED="1337098665738" TEXT="Group a sequence of objects by a common attribute.&#xa;&#xa;If you for example have a list of dicts or objects that represent persons with gender, first_name and last_name attributes and you want to group all users by genders you can do something like the following snippet:&#xa;&#xa;&lt;ul&gt;&#xa;{% for group in persons|groupby(&apos;gender&apos;) %}&#xa;    &lt;li&gt;{{ group.grouper }}&lt;ul&gt;&#xa;    {% for person in group.list %}&#xa;        &lt;li&gt;{{ person.first_name }} {{ person.last_name }}&lt;/li&gt;&#xa;    {% endfor %}&lt;/ul&gt;&lt;/li&gt;&#xa;{% endfor %}&#xa;&lt;/ul&gt;&#xa;&#xa;Additionally it&#x2019;s possible to use tuple unpacking for the grouper and list:&#xa;&#xa;&lt;ul&gt;&#xa;{% for grouper, list in persons|groupby(&apos;gender&apos;) %}&#xa;    ...&#xa;{% endfor %}&#xa;&lt;/ul&gt;&#xa;&#xa;As you can see the item we&#x2019;re grouping by is stored in the grouper attribute and the list contains all the objects that have this grouper in common."/>
</node>
<node CREATED="1337098676316" FOLDED="true" ID="ID_194494394" MODIFIED="1337098685275" TEXT="indent(s, width=4, indentfirst=False)">
<node CREATED="1337098681291" ID="ID_55396654" MODIFIED="1337098684337" TEXT="Return a copy of the passed string, each line indented by 4 spaces. The first line is not indented. If you want to change the number of spaces or indent the first line too you can pass additional parameters to the filter:&#xa;&#xa;{{ mytext|indent(2, true) }}&#xa;    indent by two spaces and indent the first line too."/>
</node>
<node CREATED="1337098690019" FOLDED="true" ID="ID_1348460145" MODIFIED="1337098699403" TEXT="int(value, default=0)">
<node CREATED="1337098694387" ID="ID_1185629583" MODIFIED="1337098698273" TEXT="Convert the value into an integer. If the conversion doesn&#x2019;t work it will return 0. You can override this default using the first parameter."/>
</node>
<node CREATED="1337098703898" FOLDED="true" ID="ID_106678591" MODIFIED="1337098713666" TEXT="join(value, d=u&apos;&apos;, attribute=None)">
<node CREATED="1337098709490" ID="ID_1011823742" MODIFIED="1337098711960" TEXT="Return a string which is the concatenation of the strings in the sequence. The separator between elements is an empty string per default, you can define it with the optional parameter:&#xa;&#xa;{{ [1, 2, 3]|join(&apos;|&apos;) }}&#xa;    -&gt; 1|2|3&#xa;&#xa;{{ [1, 2, 3]|join }}&#xa;    -&gt; 123&#xa;It is also possible to join certain attributes of an object:&#xa;&#xa;{{ users|join(&apos;, &apos;, attribute=&apos;username&apos;) }}"/>
</node>
<node CREATED="1337098718594" FOLDED="true" ID="ID_664896972" MODIFIED="1337098729727" TEXT="last(seq)">
<node CREATED="1337098723618" ID="ID_481223077" MODIFIED="1337098723951" TEXT="Return the last item of a sequence."/>
</node>
<node CREATED="1337098737168" FOLDED="true" ID="ID_912775881" MODIFIED="1337098743305" TEXT="length(object)">
<node CREATED="1337098742041" ID="ID_1173295082" MODIFIED="1337098742542" TEXT="Return the number of items of a sequence or mapping."/>
</node>
<node CREATED="1337098749768" FOLDED="true" ID="ID_1934557628" MODIFIED="1337098755016" TEXT="list(value)">
<node CREATED="1337098753632" ID="ID_129726616" MODIFIED="1337098753949" TEXT="Convert the value into a list. If it was a string the returned list will be a list of characters."/>
</node>
<node CREATED="1337098759559" FOLDED="true" ID="ID_1192036076" MODIFIED="1337098764920" TEXT="lower(s)">
<node CREATED="1337098763704" ID="ID_17111203" MODIFIED="1337098763989" TEXT="Convert a value to lowercase."/>
</node>
<node CREATED="1337098768792" FOLDED="true" ID="ID_1946954409" MODIFIED="1337098779047" TEXT="pprint(value, verbose=False)">
<node CREATED="1337098773503" ID="ID_1893421346" MODIFIED="1337098778197" TEXT="Pretty print a variable. Useful for debugging.&#xa;&#xa;With Jinja 1.2 onwards you can pass it a parameter. If this parameter is truthy the output will be more verbose (this requires pretty)"/>
</node>
<node CREATED="1337098783223" FOLDED="true" ID="ID_208620012" MODIFIED="1337098788447" TEXT="random(seq)">
<node CREATED="1337098787279" ID="ID_977037241" MODIFIED="1337098787740" TEXT="Return a random item from the sequence."/>
</node>
<node CREATED="1337098793263" FOLDED="true" ID="ID_826004221" MODIFIED="1337098804694" TEXT="replace(s, old, new, count=None)">
<node CREATED="1337098798126" ID="ID_328233085" MODIFIED="1337098800364" TEXT="Return a copy of the value with all occurrences of a substring replaced with a new one. The first argument is the substring that should be replaced, the second is the replacement string. If the optional third argument count is given, only the first count occurrences are replaced:&#xa;&#xa;{{ &quot;Hello World&quot;|replace(&quot;Hello&quot;, &quot;Goodbye&quot;) }}&#xa;    -&gt; Goodbye World&#xa;&#xa;{{ &quot;aaaaargh&quot;|replace(&quot;a&quot;, &quot;d&apos;oh, &quot;, 2) }}&#xa;    -&gt; d&apos;oh, d&apos;oh, aaargh"/>
</node>
<node CREATED="1337098811478" FOLDED="true" ID="ID_140750595" MODIFIED="1337098819253" TEXT="reverse(value)">
<node CREATED="1337098816037" ID="ID_1896125716" MODIFIED="1337098816474" TEXT="Reverse the object or return an iterator the iterates over it the other way round."/>
</node>
<node CREATED="1337098826621" FOLDED="true" ID="ID_1554751262" MODIFIED="1337098835792" TEXT="round(value, precision=0, method=&apos;common&apos;)">
<node CREATED="1337098832541" ID="ID_1883241653" MODIFIED="1337098835034" TEXT="Round the number to a given precision. The first parameter specifies the precision (default is 0), the second the rounding method:&#xa;&#xa;&apos;common&apos; rounds either up or down&#xa;&apos;ceil&apos; always rounds up&#xa;&apos;floor&apos; always rounds down&#xa;If you don&#x2019;t specify a method &apos;common&apos; is used.&#xa;&#xa;{{ 42.55|round }}&#xa;    -&gt; 43.0&#xa;{{ 42.55|round(1, &apos;floor&apos;) }}&#xa;    -&gt; 42.5&#xa;Note that even if rounded to 0 precision, a float is returned. If you need a real integer, pipe it through int:&#xa;&#xa;{{ 42.55|round|int }}&#xa;    -&gt; 43"/>
</node>
<node CREATED="1337098839845" FOLDED="true" ID="ID_997221963" MODIFIED="1337098847580" TEXT="safe(value)">
<node CREATED="1337098844604" ID="ID_1767206696" MODIFIED="1337098846890" TEXT="Mark the value as safe which means that in an environment with automatic escaping enabled this variable will not be escaped."/>
</node>
<node CREATED="1337098852100" FOLDED="true" ID="ID_1715340547" MODIFIED="1337098896730" TEXT="slice(value, slices, fill_with=None)">
<node CREATED="1337098857860" ID="ID_127590331" MODIFIED="1337098863065" TEXT="Slice an iterator and return a list of lists containing those items. Useful if you want to create a div containing three ul tags that represent columns:&#xa;&#xa;&lt;div class=&quot;columwrapper&quot;&gt;&#xa;  {%- for column in items|slice(3) %}&#xa;    &lt;ul class=&quot;column-{{ loop.index }}&quot;&gt;&#xa;    {%- for item in column %}&#xa;      &lt;li&gt;{{ item }}&lt;/li&gt;&#xa;    {%- endfor %}&#xa;    &lt;/ul&gt;&#xa;  {%- endfor %}&#xa;&lt;/div&gt;&#xa;&#xa;If you pass it a second argument it&#x2019;s used to fill missing values on the last iteration.&#xa;"/>
</node>
<node CREATED="1337098902762" FOLDED="true" ID="ID_1963795826" MODIFIED="1337098914579" TEXT="sort(value, reverse=False, case_sensitive=False, attribute=None)">
<node CREATED="1337098910897" ID="ID_1057698187" MODIFIED="1337098913791" TEXT="Sort an iterable. Per default it sorts ascending, if you pass it true as first argument it will reverse the sorting.&#xa;&#xa;If the iterable is made of strings the third parameter can be used to control the case sensitiveness of the comparison which is disabled by default.&#xa;&#xa;{% for item in iterable|sort %}&#xa;    ...&#xa;{% endfor %}&#xa;It is also possible to sort by an attribute (for example to sort by the date of an object) by specifying the attribute parameter:&#xa;&#xa;{% for item in iterable|sort(attribute=&apos;date&apos;) %}&#xa;    ...&#xa;{% endfor %}&#xa;Changed in version 2.6: The attribute parameter was added."/>
</node>
<node CREATED="1337098918985" FOLDED="true" ID="ID_562754184" MODIFIED="1337098925632" TEXT="string(object)">
<node CREATED="1337098922168" ID="ID_21977378" MODIFIED="1337098924886" TEXT="Make a string unicode if it isn&#x2019;t already. That way a markup string is not converted back to unicode."/>
</node>
<node CREATED="1337098930128" FOLDED="true" ID="ID_1160030587" MODIFIED="1337098947201" TEXT="striptags(value)">
<node CREATED="1337098936227" ID="ID_1643283649" MODIFIED="1337098940550" TEXT="Strip SGML/XML tags and replace adjacent whitespace by one space."/>
</node>
<node CREATED="1337098953351" FOLDED="true" ID="ID_1792628179" MODIFIED="1337098961415" TEXT="sum(iterable, attribute=None, start=0)">
<node CREATED="1337098958383" ID="ID_1699201043" MODIFIED="1337098960629" TEXT="Returns the sum of a sequence of numbers plus the value of parameter &#x2018;start&#x2019; (which defaults to 0). When the sequence is empty it returns start.&#xa;&#xa;It is also possible to sum up only certain attributes:&#xa;&#xa;Total: {{ items|sum(attribute=&apos;price&apos;) }}&#xa;Changed in version 2.6: The attribute parameter was added to allow suming up over attributes. Also the start parameter was moved on to the right."/>
</node>
<node CREATED="1337098966183" FOLDED="true" ID="ID_1107328327" MODIFIED="1337098973551" TEXT="title(s)">
<node CREATED="1337098971159" ID="ID_1208079477" MODIFIED="1337098971812" TEXT="Return a titlecased version of the value. I.e. words will start with uppercase letters, all remaining characters are lowercase."/>
</node>
<node CREATED="1337098978150" FOLDED="true" ID="ID_171089227" MODIFIED="1337098984262" TEXT="trim(value)">
<node CREATED="1337098982910" ID="ID_767566056" MODIFIED="1337098983539" TEXT="Strip leading and trailing whitespace."/>
</node>
<node CREATED="1337098988710" FOLDED="true" ID="ID_1263748812" MODIFIED="1337098996454" TEXT="truncate(s, length=255, killwords=False, end=&apos;...&apos;)">
<node CREATED="1337098992798" ID="ID_1222560332" MODIFIED="1337098995787" TEXT="Return a truncated copy of the string. The length is specified with the first parameter which defaults to 255. If the second parameter is true the filter will cut the text at length. Otherwise it will try to save the last word. If the text was in fact truncated it will append an ellipsis sign (&quot;...&quot;). If you want a different ellipsis sign than &quot;...&quot; you can specify it using the third parameter."/>
</node>
<node CREATED="1337099001774" FOLDED="true" ID="ID_378613167" MODIFIED="1337099007221" TEXT="upper(s)">
<node CREATED="1337099006277" ID="ID_1622000439" MODIFIED="1337099006651" TEXT="Convert a value to uppercase."/>
</node>
<node CREATED="1337099012461" FOLDED="true" ID="ID_886275880" MODIFIED="1337099020221" TEXT="urlize(value, trim_url_limit=None, nofollow=False)">
<node CREATED="1337099016869" ID="ID_603055633" MODIFIED="1337099019498" TEXT="Converts URLs in plain text into clickable links.&#xa;&#xa;If you pass the filter an additional integer it will shorten the urls to that number. Also a third argument exists that makes the urls &#x201c;nofollow&#x201d;:&#xa;&#xa;{{ mytext|urlize(40, true) }}&#xa;    links are shortened to 40 chars and defined with rel=&quot;nofollow&quot;"/>
</node>
<node CREATED="1337099025813" FOLDED="true" ID="ID_307367594" MODIFIED="1337099031340" TEXT="wordcount(s)">
<node CREATED="1337099030428" ID="ID_500366791" MODIFIED="1337099030818" TEXT="Count the words in that string."/>
</node>
<node CREATED="1337099036036" FOLDED="true" ID="ID_535067958" MODIFIED="1337099044357" TEXT="wordwrap(s, width=79, break_long_words=True)">
<node CREATED="1337099040820" ID="ID_588276598" MODIFIED="1337099043689" TEXT="Return a copy of the string passed to the filter wrapped after 79 characters. You can override this default using the first parameter. If you set the second parameter to false Jinja will not split words apart if they are longer than width."/>
</node>
<node CREATED="1337099049131" FOLDED="true" ID="ID_579354751" MODIFIED="1337099063716" TEXT="xmlattr(d, autospace=True)">
<node CREATED="1337099053770" ID="ID_606197918" MODIFIED="1337099055745" TEXT="Create an SGML/XML attribute string based on the items in a dict. All values that are neither none nor undefined are automatically escaped:&#xa;&#xa;&lt;ul{{ {&apos;class&apos;: &apos;my_list&apos;, &apos;missing&apos;: none,&#xa;        &apos;id&apos;: &apos;list-%d&apos;|format(variable)}|xmlattr }}&gt;&#xa;...&#xa;&lt;/ul&gt;&#xa;Results in something like this:&#xa;&#xa;&lt;ul class=&quot;my_list&quot; id=&quot;list-42&quot;&gt;&#xa;...&#xa;&lt;/ul&gt;&#xa;As you can see it automatically prepends a space in front of the item if the filter returned something unless the second parameter is false."/>
</node>
</node>
<node CREATED="1337099074714" FOLDED="true" ID="ID_1801833287" MODIFIED="1338324406864" TEXT="Built-in Tests">
<node CREATED="1337099085786" FOLDED="true" ID="ID_1015879325" MODIFIED="1337099093553" TEXT="callable(object)">
<node CREATED="1337099090753" ID="ID_1598719340" MODIFIED="1337099091846" TEXT="Return whether the object is callable (i.e., some kind of function). Note that classes are callable, as are instances with a __call__() method."/>
</node>
<node CREATED="1337099098393" FOLDED="true" ID="ID_898906582" MODIFIED="1337099108025" TEXT="defined(value)">
<node CREATED="1337099103072" ID="ID_907271780" MODIFIED="1337099107263" TEXT="Return true if the variable is defined:&#xa;&#xa;{% if variable is defined %}&#xa;    value of variable: {{ variable }}&#xa;{% else %}&#xa;    variable is not defined&#xa;{% endif %}&#xa;&#xa;See the default() filter for a simple way to set undefined variables."/>
</node>
<node CREATED="1337099113577" FOLDED="true" ID="ID_1563787925" MODIFIED="1337099119920" TEXT="divisibleby(value, num)">
<node CREATED="1337099118864" ID="ID_1656415243" MODIFIED="1337099119389" TEXT="Check if a variable is divisible by a number."/>
</node>
<node CREATED="1337099125000" FOLDED="true" ID="ID_295349362" MODIFIED="1337099130136" TEXT="escaped(value)">
<node CREATED="1337099129296" ID="ID_1611384618" MODIFIED="1337099129581" TEXT="Check if the value is escaped."/>
</node>
<node CREATED="1337099135456" FOLDED="true" ID="ID_198214339" MODIFIED="1337099140640" TEXT="even(value)">
<node CREATED="1337099139759" ID="ID_497837194" MODIFIED="1337099140071" TEXT="Return true if the variable is even."/>
</node>
<node CREATED="1337099146576" FOLDED="true" ID="ID_905595354" MODIFIED="1337099152726" TEXT="iterable(value)">
<node CREATED="1337099151599" ID="ID_606004158" MODIFIED="1337099152244" TEXT="Check if it&#x2019;s possible to iterate over an object."/>
</node>
<node CREATED="1337099157470" FOLDED="true" ID="ID_296394493" MODIFIED="1337099162999" TEXT="lower(value)">
<node CREATED="1337099161894" ID="ID_1739380458" MODIFIED="1337099162315" TEXT="Return true if the variable is lowercased."/>
</node>
<node CREATED="1337099167222" FOLDED="true" ID="ID_758690725" MODIFIED="1337099421939" TEXT="mapping(value)">
<node CREATED="1337099172694" ID="ID_1960050551" MODIFIED="1337099173995" TEXT="Return true if the object is a mapping (dict etc.)."/>
</node>
<node CREATED="1337099429467" FOLDED="true" ID="ID_1403444527" MODIFIED="1337099434635" TEXT="none(value)">
<node CREATED="1337099433859" ID="ID_283682404" MODIFIED="1337099434114" TEXT="Return true if the variable is none."/>
</node>
<node CREATED="1337099440018" FOLDED="true" ID="ID_937020978" MODIFIED="1337099445379" TEXT="number(value)">
<node CREATED="1337099444538" ID="ID_1101763252" MODIFIED="1337099444855" TEXT="Return true if the variable is a number."/>
</node>
<node CREATED="1337099450250" FOLDED="true" ID="ID_834122080" MODIFIED="1337099459418" TEXT="odd(value)">
<node CREATED="1337099454618" ID="ID_1685325059" MODIFIED="1337099455079" TEXT="Return true if the variable is odd."/>
</node>
<node CREATED="1337099459906" FOLDED="true" ID="ID_111825211" MODIFIED="1337099469649" TEXT="sameas(value, other)">
<node CREATED="1337099464953" ID="ID_1460501873" MODIFIED="1337099468263" TEXT="Check if an object points to the same memory address than another object:&#xa;&#xa;{% if foo.attribute is sameas false %}&#xa;    the foo attribute really is the `False` singleton&#xa;{% endif %}"/>
</node>
<node CREATED="1337099474577" FOLDED="true" ID="ID_1346228796" MODIFIED="1337099485761" TEXT="sequence(value)">
<node CREATED="1337099478761" ID="ID_644563434" MODIFIED="1337099479982" TEXT="Return true if the variable is a sequence. Sequences are variables that are iterable. "/>
</node>
<node CREATED="1337099486392" FOLDED="true" ID="ID_1175915094" MODIFIED="1337099500736" TEXT="string(value)">
<node CREATED="1337099494088" ID="ID_1837587961" MODIFIED="1337099494751" TEXT="Return true if the object is a string."/>
</node>
<node CREATED="1337099501464" FOLDED="true" ID="ID_1440917521" MODIFIED="1337099511183" TEXT="undefined(value)">
<node CREATED="1337099506503" ID="ID_1471783258" MODIFIED="1337099506869" TEXT="Like defined() but the other way round."/>
</node>
<node CREATED="1337099511815" FOLDED="true" ID="ID_742981048" MODIFIED="1337099517983" TEXT="upper(value)">
<node CREATED="1337099516383" ID="ID_1345477128" MODIFIED="1337099516900" TEXT="Return true if the variable is uppercased."/>
</node>
</node>
<node CREATED="1337099528223" FOLDED="true" ID="ID_1310614480" MODIFIED="1338324408888" TEXT="List of Global Functions">
<node CREATED="1337099547278" FOLDED="true" ID="ID_1542940278" MODIFIED="1337099565653" TEXT="range([start], stop[, step])">
<node CREATED="1337099561909" ID="ID_861781206" MODIFIED="1337099564587" TEXT="Return a list containing an arithmetic progression of integers. range(i, j) returns [i, i+1, i+2, ..., j-1]; start (!) defaults to 0. When step is given, it specifies the increment (or decrement). For example, range(4) returns [0, 1, 2, 3]. The end point is omitted! These are exactly the valid indices for a list of 4 elements.&#xa;&#xa;This is useful to repeat a template block multiple times for example to fill a list. Imagine you have 7 users in the list but you want to render three empty items to enforce a height with CSS:&#xa;&#xa;&lt;ul&gt;&#xa;{% for user in users %}&#xa;    &lt;li&gt;{{ user.username }}&lt;/li&gt;&#xa;{% endfor %}&#xa;{% for number in range(10 - users|count) %}&#xa;    &lt;li class=&quot;empty&quot;&gt;&lt;span&gt;...&lt;/span&gt;&lt;/li&gt;&#xa;{% endfor %}&#xa;&lt;/ul&gt;"/>
</node>
<node CREATED="1337099585580" FOLDED="true" ID="ID_541784591" MODIFIED="1337099594739" TEXT="lipsum(n=5, html=True, min=20, max=100)">
<node CREATED="1337099591996" ID="ID_1234978160" MODIFIED="1337099592880" TEXT="Generates some lorem ipsum for the template. Per default five paragraphs with HTML are generated each paragraph between 20 and 100 words. If html is disabled regular text is returned. This is useful to generate simple contents for layout testing."/>
</node>
<node CREATED="1337099602171" FOLDED="true" ID="ID_84473010" MODIFIED="1337099619771" TEXT="dict(**items)">
<node CREATED="1337099609035" ID="ID_1228658500" MODIFIED="1337099609784" TEXT="A convenient alternative to dict literals. {&apos;foo&apos;: &apos;bar&apos;} is the same as dict(foo=&apos;bar&apos;)."/>
</node>
<node CREATED="1337099620346" FOLDED="true" ID="ID_1386628846" MODIFIED="1337099689705" TEXT="class cycler(*items)">
<node CREATED="1337099630585" ID="ID_1970898066" MODIFIED="1337099632984" TEXT="The cycler allows you to cycle among values similar to how loop.cycle works. Unlike loop.cycle however you can use this cycler outside of loops or over multiple loops.&#xa;&#xa;This is for example very useful if you want to show a list of folders and files, with the folders on top, but both in the same list with alternating row colors.&#xa;&#xa;The following example shows how cycler can be used:&#xa;&#xa;{% set row_class = cycler(&apos;odd&apos;, &apos;even&apos;) %}&#xa;&lt;ul class=&quot;browser&quot;&gt;&#xa;{% for folder in folders %}&#xa;  &lt;li class=&quot;folder {{ row_class.next() }}&quot;&gt;{{ folder|e }}&lt;/li&gt;&#xa;{% endfor %}&#xa;{% for filename in files %}&#xa;  &lt;li class=&quot;file {{ row_class.next() }}&quot;&gt;{{ filename|e }}&lt;/li&gt;&#xa;{% endfor %}&#xa;&lt;/ul&gt;"/>
<node CREATED="1337099645041" ID="ID_510194529" MODIFIED="1337099659966" TEXT="The class cycler has the following methods:"/>
<node CREATED="1337099661369" FOLDED="true" ID="ID_1337545903" MODIFIED="1337099688088" TEXT="reset()">
<node CREATED="1337099666185" ID="ID_595320411" MODIFIED="1337099666677" TEXT="Resets the cycle to the first item."/>
</node>
<node CREATED="1337099672752" FOLDED="true" ID="ID_1158753469" MODIFIED="1337099687792" TEXT="next()">
<node CREATED="1337099676928" ID="ID_1576518468" MODIFIED="1337099677277" TEXT="Goes one item a head and returns the then current item."/>
</node>
<node CREATED="1337099682152" FOLDED="true" ID="ID_579196022" MODIFIED="1337099687480" TEXT="current">
<node CREATED="1337099686416" ID="ID_1539929424" MODIFIED="1337099686823" TEXT="Returns the current item."/>
</node>
</node>
<node CREATED="1337099696975" FOLDED="true" ID="ID_1589746951" MODIFIED="1337099707511" TEXT="class joiner(sep=&apos;, &apos;)">
<node CREATED="1337099704078" ID="ID_961303845" MODIFIED="1337099706549" TEXT="A tiny helper that can be use to &#x201c;join&#x201d; multiple sections. A joiner is passed a string and will return that string every time it&#x2019;s called, except the first time in which situation it returns an empty string. You can use this to join things:&#xa;&#xa;{% set pipe = joiner(&quot;|&quot;) %}&#xa;{% if categories %} {{ pipe() }}&#xa;    Categories: {{ categories|join(&quot;, &quot;) }}&#xa;{% endif %}&#xa;{% if author %} {{ pipe() }}&#xa;    Author: {{ author() }}&#xa;{% endif %}&#xa;{% if can_edit %} {{ pipe() }}&#xa;    &lt;a href=&quot;?action=edit&quot;&gt;Edit&lt;/a&gt;&#xa;{% endif %}"/>
</node>
</node>
<node CREATED="1337099753837" FOLDED="true" ID="ID_372307660" MODIFIED="1337227567944" TEXT="Extensions">
<node CREATED="1337099767420" FOLDED="true" ID="ID_350223802" MODIFIED="1337099851664" TEXT="i18n">
<node CREATED="1337099789299" ID="ID_21578648" MODIFIED="1337099792121" TEXT="If the i18n extension is enabled it&#x2019;s possible to mark parts in the template as translatable. To mark a section as translatable you can use trans:&#xa;&#xa;&lt;p&gt;{% trans %}Hello {{ user }}!{% endtrans %}&lt;/p&gt;&#xa;To translate a template expression &#x2014; say, using template filters or just accessing an attribute of an object &#x2014; you need to bind the expression to a name for use within the translation block:&#xa;&#xa;&lt;p&gt;{% trans user=user.username %}Hello {{ user }}!{% endtrans %}&lt;/p&gt;&#xa;If you need to bind more than one expression inside a trans tag, separate the pieces with a comma (,):&#xa;&#xa;{% trans book_title=book.title, author=author.name %}&#xa;This is {{ book_title }} by {{ author }}&#xa;{% endtrans %}&#xa;Inside trans tags no statements are allowed, only variable tags are.&#xa;&#xa;To pluralize, specify both the singular and plural forms with the pluralize tag, which appears between trans and endtrans:&#xa;&#xa;{% trans count=list|length %}&#xa;There is {{ count }} {{ name }} object.&#xa;{% pluralize %}&#xa;There are {{ count }} {{ name }} objects.&#xa;{% endtrans %}&#xa;Per default the first variable in a block is used to determine the correct singular or plural form. If that doesn&#x2019;t work out you can specify the name which should be used for pluralizing by adding it as parameter to pluralize:&#xa;&#xa;{% trans ..., user_count=users|length %}...&#xa;{% pluralize user_count %}...{% endtrans %}&#xa;It&#x2019;s also possible to translate strings in expressions. For that purpose three functions exist:&#xa;&#xa;_ gettext: translate a single string - ngettext: translate a pluralizable string - _: alias for gettext&#xa;&#xa;For example you can print a translated string easily this way:&#xa;&#xa;{{ _(&apos;Hello World!&apos;) }}&#xa;To use placeholders you can use the format filter:&#xa;&#xa;{{ _(&apos;Hello %(user)s!&apos;)|format(user=user.username) }}&#xa;For multiple placeholders always use keyword arguments to format as other languages may not use the words in the same order."/>
</node>
<node CREATED="1337099918838" FOLDED="true" ID="ID_1821692242" MODIFIED="1337099945637" TEXT="Expression Statement">
<node CREATED="1337099924045" ID="ID_1825862094" MODIFIED="1337099926891" TEXT="If the expression-statement extension is loaded a tag called do is available that works exactly like the regular variable expression ({{ ... }}) just that it doesn&#x2019;t print anything. This can be used to modify lists:&#xa;&#xa;{% do navigation.append(&apos;a string&apos;) %}"/>
</node>
<node CREATED="1337099950708" FOLDED="true" ID="ID_186475974" MODIFIED="1337099962884" TEXT="Loop Controls">
<node CREATED="1337099956884" ID="ID_1069487075" MODIFIED="1337099961841" TEXT="If the application enables the Loop Controls it&#x2019;s possible to use break and continue in loops. When break is reached, the loop is terminated; if continue is reached, the processing is stopped and continues with the next iteration.&#xa;&#xa;Here a loop that skips every second item:&#xa;&#xa;{% for user in users %}&#xa;    {%- if loop.index is even %}{% continue %}{% endif %}&#xa;    ...&#xa;{% endfor %}&#xa;&#xa;Likewise a look that stops processing after the 10th iteration:&#xa;&#xa;{% for user in users %}&#xa;    {%- if loop.index &gt;= 10 %}{% break %}{% endif %}&#xa;{%- endfor %}"/>
</node>
<node CREATED="1337099967132" FOLDED="true" ID="ID_1724335552" MODIFIED="1337099992587" TEXT="With Statement">
<node CREATED="1337099974763" ID="ID_1071981007" MODIFIED="1337099985720" TEXT="If the application enables the With Statement it is possible to use the with keyword in templates. This makes it possible to create a new inner scope. Variables set within this scope are not visible outside of the scope.&#xa;&#xa;With in a nutshell:&#xa;&#xa;{% with %}&#xa;    {% set foo = 42 %}&#xa;    {{ foo }}           foo is 42 here&#xa;{% endwith %}&#xa;foo is not visible here any longer&#xa;&#xa;Because it is common to set variables at the beginning of the scope you can do that within the with statement. The following two examples are equivalent:&#xa;&#xa;{% with foo = 42 %}&#xa;    {{ foo }}&#xa;{% endwith %}&#xa;&#xa;{% with %}&#xa;    {% set foo = 42 %}&#xa;    {{ foo }}&#xa;{% endwith %}"/>
</node>
<node CREATED="1337099901398" FOLDED="true" ID="ID_479780629" MODIFIED="1337099911766" TEXT="Autoescape Extension">
<node CREATED="1337099907870" ID="ID_1995231443" MODIFIED="1337099910731" TEXT="If the application enables the Autoescape Extension one can activate and deactivate the autoescaping from within the templates.&#xa;&#xa;Example:&#xa;&#xa;{% autoescape true %}&#xa;    Autoescaping is active within this block&#xa;{% endautoescape %}&#xa;&#xa;{% autoescape false %}&#xa;    Autoescaping is inactive within this block&#xa;{% endautoescape %}&#xa;After the endautoescape the behavior is reverted to what it was before."/>
</node>
</node>
<node CREATED="1337224351896" FOLDED="true" ID="ID_1431025201" MODIFIED="1337227571551" TEXT="Creating a filter to preserve newlines">
<node CREATED="1337224363127" ID="ID_1662810410" MODIFIED="1337224366539" TEXT="I created a custom Jinja2 filter and used it from within my template. I&apos;m not sure how efficient this may be, but it works for me.&#xa;&#xa;Add the filter in your main.py.&#xa;&#xa;def nl2br(value): &#xa;     return value.replace(&apos;\n&apos;,&apos;&lt;br&gt;\n&apos;)&#xa;&#xa;jinja_env.filters[&apos;nl2br&apos;] = nl2br&#xa;&#xa;&#xa;You then apply the filter wherever you want to preserve newlines in your template.&#xa;&#xa;    {{ text | nl2br | safe }}&#xa;&#xa;You could learn more about custom filters by checking the Jinja2 docs."/>
</node>
</node>
<node CREATED="1344268675501" FOLDED="true" ID="ID_1323273712" MODIFIED="1348158363557" POSITION="right" TEXT="Less">
<node CREATED="1344268890355" FOLDED="true" ID="ID_1170711538" MODIFIED="1344272227322" TEXT="Variables">
<node CREATED="1344268897284" ID="ID_986070510" MODIFIED="1344272194647" TEXT="@color: #4D926F;&#xa;&#xa;#header {&#xa;  color: @color;&#xa;}&#xa;h2 {&#xa;  color: @color;&#xa;}&#xa;&#xa;/* Compiled CSS */&#xa;&#xa;#header {&#xa;  color: #4D926F;&#xa;}&#xa;h2 {&#xa;  color: #4D926F;&#xa;}"/>
<node CREATED="1344272151966" ID="ID_1675603054" MODIFIED="1344272159933" TEXT="@nice-blue: #5B83AD;&#xa;@light-blue: @nice-blue + #111;&#xa;&#xa;#header { color: @light-blue; }&#xa;&#xa;Outputs:&#xa;&#xa;#header { color: #6c94be; }"/>
<node CREATED="1344272172496" ID="ID_318992562" MODIFIED="1344272175862" TEXT="It is also possible to define variables with a variable name:&#xa;&#xa;@fnord: &quot;I am fnord.&quot;;&#xa;@var: &apos;fnord&apos;;&#xa;content: @@var;&#xa;Which compiles to:&#xa;&#xa;content: &quot;I am fnord.&quot;;"/>
</node>
<node CREATED="1344268693388" FOLDED="true" ID="ID_63091876" MODIFIED="1344271950344" TEXT="Mixins">
<node CREATED="1344268815568" ID="ID_999059462" MODIFIED="1344271812435" TEXT="Mixins allow you to embed all the properties of a class into another class by simply including the class name as one of its properties. It&#x2019;s just like variables, but for whole classes."/>
<node CREATED="1344271842387" ID="ID_1015281938" MODIFIED="1344271851175" TEXT="In LESS, it is possible to include a bunch of properties from one ruleset into another ruleset. So say we have the following class:&#xa;&#xa;.bordered {&#xa;  border-top: dotted 1px black;&#xa;  border-bottom: solid 2px black;&#xa;}&#xa;&#xa;And we want to use these properties inside other rulesets. Well, we just have to drop in the name of the class in any ruleset we want to include its properties, like so:&#xa;&#xa;#menu a {&#xa;  color: #111;&#xa;  .bordered;&#xa;}&#xa;.post a {&#xa;  color: red;&#xa;  .bordered;&#xa;}"/>
<node CREATED="1344271868860" ID="ID_1876733774" MODIFIED="1344271879178" TEXT="The properties of the .bordered class will now appear in both #menu a and .post a:&#xa;&#xa;#menu a {&#xa;  color: #111;&#xa;  border-top: dotted 1px black;&#xa;  border-bottom: solid 2px black;&#xa;}&#xa;.post a {&#xa;  color: red;&#xa;  border-top: dotted 1px black;&#xa;  border-bottom: solid 2px black;&#xa;}&#xa;&#xa;Any CSS class or id ruleset can be mixed-in that way."/>
</node>
<node CREATED="1344271773272" FOLDED="true" ID="ID_1616213196" MODIFIED="1344272136128" TEXT="Mixins w/ parameters">
<node CREATED="1344271815521" ID="ID_829886561" MODIFIED="1344271815897" TEXT="Mixins can also behave like functions, and take arguments, as seen in the example bellow."/>
<node CREATED="1344268831497" ID="ID_257915898" MODIFIED="1344268872365" TEXT=".rounded-corners (@radius: 5px) {    // The (@radius: 5px) is an argument&#xa;  border-radius: @radius;&#xa;  -webkit-border-radius: @radius;&#xa;  -moz-border-radius: @radius;&#xa;}&#xa;&#xa;#header {&#xa;  .rounded-corners;&#xa;}&#xa;#footer {&#xa;  .rounded-corners(10px);&#xa;}&#xa;&#xa;/* Compiled CSS */&#xa;&#xa;#header {&#xa;  border-radius: 5px;&#xa;  -webkit-border-radius: 5px;&#xa;  -moz-border-radius: 5px;&#xa;}&#xa;#footer {&#xa;  border-radius: 10px;&#xa;  -webkit-border-radius: 10px;&#xa;  -moz-border-radius: 10px;&#xa;}"/>
<node CREATED="1344271933726" FOLDED="true" ID="ID_233253938" MODIFIED="1344271943535" TEXT="With a default value">
<node CREATED="1344271918206" ID="ID_946847262" MODIFIED="1344271926020" TEXT="Parametric mixins can also have default values for their parameters:&#xa;&#xa;.border-radius (@radius: 5px) {&#xa;  border-radius: @radius;&#xa;  -moz-border-radius: @radius;&#xa;  -webkit-border-radius: @radius;&#xa;}&#xa;&#xa;We can invoke it like this now:&#xa;&#xa;#header {&#xa;  .border-radius;&#xa;}&#xa;&#xa;And it will include a 5px border-radius."/>
</node>
<node CREATED="1344272019023" FOLDED="true" ID="ID_1223561280" MODIFIED="1344272045787" TEXT="Parametric mixins w/o parameters hide the rules from the CSS output">
<node CREATED="1344272038762" ID="ID_1903210448" MODIFIED="1344272042041" TEXT="You can also use parametric mixins which don&#x2019;t take parameters. This is useful if you want to hide the ruleset from the CSS output, but want to include its properties in other rulesets:&#xa;&#xa;.wrap () {&#xa;  text-wrap: wrap;&#xa;  white-space: pre-wrap;&#xa;  white-space: -moz-pre-wrap;&#xa;  word-wrap: break-word;&#xa;}&#xa;&#xa;pre { .wrap }&#xa;Which would output:&#xa;&#xa;pre {&#xa;  text-wrap: wrap;&#xa;  white-space: pre-wrap;&#xa;  white-space: -moz-pre-wrap;&#xa;  word-wrap: break-word;&#xa;}"/>
</node>
<node CREATED="1344272069995" FOLDED="true" ID="ID_420993080" MODIFIED="1344272098725" TEXT="The @arguments variable">
<node CREATED="1344272081228" ID="ID_928942168" MODIFIED="1344272094816" TEXT="@arguments has a special meaning inside mixins, it contains all the arguments passed, when the mixin was called. This is useful if you don&#x2019;t want to deal with individual parameters:&#xa;&#xa;.box-shadow (@x: 0, @y: 0, @blur: 1px, @color: #000) {&#xa;  box-shadow: @arguments;&#xa;  -moz-box-shadow: @arguments;&#xa;  -webkit-box-shadow: @arguments;&#xa;}&#xa;&#xa;.box-shadow(2px, 5px);&#xa;&#xa;Which results in:&#xa;&#xa;  box-shadow: 2px 5px 1px #000;&#xa;  -moz-box-shadow: 2px 5px 1px #000;&#xa;  -webkit-box-shadow: 2px 5px 1px #000;"/>
</node>
</node>
<node CREATED="1344276653255" FOLDED="true" ID="ID_732865163" MODIFIED="1344276740927" TEXT="Nesting">
<node CREATED="1344276666743" ID="ID_346392122" MODIFIED="1344276676685" TEXT="LESS gives you the ability to use nesting instead of, or in combination with cascading. Lets say we have the following CSS:&#xa;&#xa;#header { color: black; }&#xa;#header .navigation {&#xa;  font-size: 12px;&#xa;}&#xa;#header .logo {&#xa;  width: 300px;&#xa;}&#xa;#header .logo:hover {&#xa;  text-decoration: none;&#xa;}&#xa;&#xa;In LESS, we can also write it this way:&#xa;&#xa;#header {&#xa;  color: black;&#xa;&#xa;  .navigation {&#xa;    font-size: 12px;&#xa;  }&#xa;  .logo {&#xa;    width: 300px;&#xa;    &amp;:hover { text-decoration: none }&#xa;  }&#xa;}&#xa;&#xa;Or this way:&#xa;&#xa;#header        { color: black;&#xa;  .navigation  { font-size: 12px }&#xa;  .logo        { width: 300px;&#xa;    &amp;:hover    { text-decoration: none }&#xa;  }&#xa;}&#xa;&#xa;The resulting code is more concise, and mimics the structure of your DOM tree."/>
<node CREATED="1344276693962" ID="ID_1018971923" MODIFIED="1344276694597" TEXT="Notice the &amp; combinator&#x2014;it&#x2019;s used when you want a nested selector to be concatenated to its parent selector, instead of acting as a descendant. This is especially important for pseudo-classes like :hover and :focus."/>
</node>
<node CREATED="1344276776130" FOLDED="true" ID="ID_455584919" MODIFIED="1344277234154" TEXT="Operations">
<node CREATED="1344276792259" ID="ID_680871178" MODIFIED="1344276798093" TEXT="Any number, color or variable can be operated on. Here are a couple of examples:&#xa;&#xa;@base: 5%;&#xa;@filler: @base * 2;&#xa;@other: @base + @filler;&#xa;&#xa;color: #888 / 4;&#xa;background-color: @base-color + #111;&#xa;height: 100% / 2 + @filler;&#xa;&#xa;The output is pretty much what you expect&#x2014;LESS understands the difference between colors and units."/>
<node CREATED="1344277203703" ID="ID_1561887041" MODIFIED="1344277210511" TEXT="If a unit is used in an operation, like in:&#xa;&#xa;@var: 1px + 5;&#xa;LESS will use that unit for the final output&#x2014;6px in this case."/>
<node CREATED="1344277221480" ID="ID_923081213" MODIFIED="1344277233362" TEXT="Brackets are also authorized in operations:&#xa;&#xa;width: (@var + 5) * 2;&#xa;And are required in compound values:&#xa;&#xa;border: (@width * 2) solid black;"/>
</node>
<node CREATED="1344284378570" FOLDED="true" ID="ID_1635667855" MODIFIED="1344284495168" TEXT="Color functions">
<node CREATED="1344284393739" ID="ID_216968706" MODIFIED="1344284397200" TEXT="LESS provides a variety of functions which transform colors. Colors are first converted to the HSL color-space, and then manipulated at the channel level:&#xa;&#xa;lighten(@color, 10%);     // return a color which is 10% *lighter* than @color&#xa;darken(@color, 10%);      // return a color which is 10% *darker* than @color&#xa;&#xa;saturate(@color, 10%);    // return a color 10% *more* saturated than @color&#xa;desaturate(@color, 10%);  // return a color 10% *less* saturated than @color&#xa;&#xa;fadein(@color, 10%);      // return a color 10% *less* transparent than @color&#xa;fadeout(@color, 10%);     // return a color 10% *more* transparent than @color&#xa;fade(@color, 50%);        // return @color with 50% transparency&#xa;&#xa;spin(@color, 10);         // return a color with a 10 degree larger in hue than @color&#xa;spin(@color, -10);        // return a color with a 10 degree smaller hue than @color&#xa;&#xa;mix(@color1, @color2);    // return a mix of @color1 and @color2"/>
<node CREATED="1344284482950" FOLDED="true" ID="ID_544602517" MODIFIED="1344284488295" TEXT="Using color functions">
<node CREATED="1344284403404" ID="ID_553695215" MODIFIED="1344284407295" TEXT="Using them is pretty straightforward:&#xa;&#xa;@base: #f04615;&#xa;&#xa;.class {&#xa;  color: saturate(@base, 5%);&#xa;  background-color: lighten(spin(@base, 8), 25%);&#xa;}"/>
</node>
<node CREATED="1344284488974" FOLDED="true" ID="ID_318239710" MODIFIED="1344284493695" TEXT="Extract color information">
<node CREATED="1344284474911" ID="ID_533216943" MODIFIED="1344284477814" TEXT="You can also extract color information:&#xa;&#xa;hue(@color);        // returns the `hue` channel of @color&#xa;saturation(@color); // returns the `saturation` channel of @color&#xa;lightness(@color);  // returns the &apos;lightness&apos; channel of @color&#xa;alpha(@color);      // returns the &apos;alpha&apos; channel of @color"/>
</node>
</node>
<node CREATED="1344284525144" FOLDED="true" ID="ID_851807470" MODIFIED="1344284549488" TEXT="Math functions">
<node CREATED="1344284537416" ID="ID_795041481" MODIFIED="1344284548539" TEXT="LESS provides a couple of handy math functions you can use on number values:&#xa;&#xa;round(1.67); // returns `2`&#xa;ceil(2.4);   // returns `3`&#xa;floor(2.6);  // returns `2`&#xa;percentage(0.5); // returns `50%`"/>
</node>
<node CREATED="1344284637148" FOLDED="true" ID="ID_516138016" MODIFIED="1344284656621" TEXT="Namespaces">
<node CREATED="1344284644076" ID="ID_1833900682" MODIFIED="1344284647873" TEXT="Sometimes, you may want to group your variables or mixins, for organizational purposes, or just to offer some encapsulation. You can do this pretty intuitively in LESS&#x2014;say you want to bundle some mixins and variables under #bundle, for later re-use, or for distributing:&#xa;&#xa;#bundle {&#xa;  .button () {&#xa;    display: block;&#xa;    border: 1px solid black;&#xa;    background-color: grey;&#xa;    &amp;:hover { background-color: white }&#xa;  }&#xa;  .tab { ... }&#xa;  .citation { ... }&#xa;}"/>
<node CREATED="1344284653909" ID="ID_1785176119" MODIFIED="1344284655889" TEXT="Now if we want to mixin the .button class in our #header a, we can do:&#xa;&#xa;#header a {&#xa;  color: orange;&#xa;  #bundle &gt; .button;&#xa;}"/>
</node>
<node CREATED="1344284678046" FOLDED="true" ID="ID_1016453149" MODIFIED="1344284688815" TEXT="Scope">
<node CREATED="1344284684901" ID="ID_1799843729" MODIFIED="1344284687588" TEXT="Scope in LESS is very similar to that of programming languages. Variables and mixins are first looked up locally, and if they aren&#x2019;t found, the compiler will look in the parent scope, and so on.&#xa;&#xa;@var: red;&#xa;&#xa;#page {&#xa;  @var: white;&#xa;  #header {&#xa;    color: @var; // white&#xa;  }&#xa;}&#xa;&#xa;#footer {&#xa;  color: @var; // red&#xa;}"/>
</node>
<node CREATED="1344284695687" FOLDED="true" ID="ID_308848155" MODIFIED="1344284721272" TEXT="Comments">
<node CREATED="1344284710927" ID="ID_1758710039" MODIFIED="1344284719766" TEXT="CSS-style comments are preserved by LESS:&#xa;&#xa;/* Hello, I&apos;m a CSS-style comment */&#xa;.class { color: black }&#xa;&#xa;Single-line comments are also valid in LESS, but they are &#x2018;silent&#x2019;, they don&#x2019;t show up in the compiled CSS output:&#xa;&#xa;// Hi, I&apos;m a silent comment, I won&apos;t show up in your CSS:&#xa;&#xa;.class { color: white }"/>
</node>
<node CREATED="1344284738440" FOLDED="true" ID="ID_665323056" MODIFIED="1344284764866" TEXT="Importing">
<node CREATED="1344284757032" ID="ID_1785918708" MODIFIED="1344284764163" TEXT="You can import .less files, and all the variables and mixins in them will be made available to the main file. The .less extension is optional, so both of these are valid:&#xa;&#xa;@import &quot;lib.less&quot;;&#xa;@import &quot;lib&quot;;&#xa;&#xa;If you want to import a CSS file, and don&#x2019;t want LESS to process it, just use the .css extension:&#xa;&#xa;@import &quot;lib.css&quot;;&#xa;&#xa;The directive will just be left as is, and end up in the CSS output."/>
</node>
<node CREATED="1344284791395" FOLDED="true" ID="ID_144841548" MODIFIED="1344284847573" TEXT="String interpolation">
<node CREATED="1344284799211" ID="ID_1113199165" MODIFIED="1344284802535" TEXT="Variables can be embeded inside strings in a similar way to ruby or PHP, with the @{name} construct:&#xa;&#xa;@base-url: &quot;http://assets.fnord.com&quot;;&#xa;background-image: url(&quot;@{base-url}/images/bg.png&quot;);"/>
</node>
<node CREATED="1344284848294" FOLDED="true" ID="ID_567885490" MODIFIED="1344284857294" TEXT="Escaping">
<node CREATED="1344284849757" ID="ID_1422673863" MODIFIED="1344284855919" TEXT="Sometimes you might need to output a CSS value which is either not valid CSS syntax, or uses proprietary syntax which LESS doesn&#x2019;t recognize.&#xa;&#xa;To output such value, we place it inside a string prefixed with ~, for example:&#xa;&#xa;.class {&#xa;  filter: ~&quot;ms:alwaysHasItsOwnSyntax.For.Stuff()&quot;;&#xa;}&#xa;&#xa;This is called an &#x201c;escaped value&#x201d;, which will result in:&#xa;&#xa;.class {&#xa;  filter: ms:alwaysHasItsOwnSyntax.For.Stuff();&#xa;}"/>
</node>
<node CREATED="1344284964313" FOLDED="true" ID="ID_1988854879" MODIFIED="1344285110848" TEXT="JavaScript evaluation">
<node CREATED="1344284975218" ID="ID_1724903036" MODIFIED="1344284980280" TEXT="JavaScript expressions can be evaluated as values inside .less files. This is done by wrapping the expression with back-ticks:&#xa;&#xa;@var: `&quot;hello&quot;.toUpperCase() + &apos;!&apos;`;&#xa;&#xa;Becomes:&#xa;&#xa;@var: &quot;HELLO!&quot;;"/>
<node CREATED="1344285008480" ID="ID_941465732" MODIFIED="1344285013621" TEXT="Note that you may also use interpolation and escaping as with strings:&#xa;&#xa;@str: &quot;hello&quot;;&#xa;@var: ~`&quot;@{str}&quot;.toUpperCase() + &apos;!&apos;`;&#xa;&#xa;Becomes:&#xa;&#xa;@var: HELLO!;"/>
<node CREATED="1344285082079" ID="ID_1868551051" MODIFIED="1344285084726" TEXT="It is also possible to access the JavaScript environment:&#xa;&#xa;@height: `document.body.clientHeight`;"/>
<node CREATED="1344285105976" ID="ID_56655804" MODIFIED="1344285109217" TEXT="If you want to parse a JavaScript string as a hex color, you may use the color function:&#xa;&#xa;@color: color(`window.colors.baseColor`);&#xa;@darkcolor: darken(@color, 10%);"/>
</node>
</node>
<node CREATED="1348158036149" ID="ID_967611196" MODIFIED="1348158037617" POSITION="right" TEXT="HTML"/>
<node CREATED="1348158044005" ID="ID_1712134467" MODIFIED="1348158045169" POSITION="right" TEXT="CSS"/>
<node CREATED="1348158048468" ID="ID_1817227739" MODIFIED="1348158050528" POSITION="right" TEXT="JavaScript"/>
<node CREATED="1348158052828" ID="ID_877572048" MODIFIED="1348158054040" POSITION="right" TEXT="Django"/>
<node CREATED="1348158322122" ID="ID_66135774" MODIFIED="1348158327470" POSITION="right" TEXT="Postgres"/>
<node CREATED="1348158151376" ID="ID_1884782216" MODIFIED="1348158172956" POSITION="right" TEXT="Unix tools"/>
</node>
</map>
