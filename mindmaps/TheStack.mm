<map version="freeplane 1.2.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="The Stack" ID="ID_852769940" CREATED="1348849982587" MODIFIED="1349138884245"><hook NAME="MapStyle">
    <properties show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Netbeans RCP" POSITION="right" ID="ID_588276440" CREATED="1348850193431" MODIFIED="1349163338729">
<node ID="ID_599476567" CREATED="1349163256246" MODIFIED="1349163318926"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Naming convention
    </p>
    <p>
      
    </p>
    <p>
      Esperance
    </p>
    <p>
      Esperance Parent
    </p>
    <p>
      Esperance Module : Module
    </p>
    <p>
      Esperance Module : Module2...
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="git" POSITION="left" ID="ID_1440192555" CREATED="1348850260773" MODIFIED="1348850265756">
<node ID="ID_1353401044" CREATED="1352354672982" MODIFIED="1352354758281"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>git config --global user.name &quot;you name&quot;
git config --global user.email you@domain.com
git commit --amend --reset-author</pre>
  </body>
</html>
</richcontent>
</node>
<node TEXT="filter-branch" ID="ID_1152499267" CREATED="1353368377820" MODIFIED="1353368385897">
<node TEXT="#! /bin/bash&#xa;# https://help.github.com/articles/remove-sensitive-data&#xa;&#xa;git filter-branch --index-filter &quot;git rm --cached --ignore-unmatch &apos;*.jar&apos;&quot; --prune-empty --tag-name-filter cat -- --all&#xa;&#xa;rm -rf .git/refs/original/&#xa;&#xa;git gc --prune=now&#xa;git gc --aggressive --prune=now" ID="ID_79066232" CREATED="1353368334752" MODIFIED="1353368364665"/>
</node>
</node>
<node TEXT="Linux Admin" POSITION="left" ID="ID_264969468" CREATED="1348850281204" MODIFIED="1349138848936">
<node TEXT="File Limits" ID="ID_432890309" CREATED="1349148239976" MODIFIED="1349152902448">
<node TEXT="There are 2 limit levels" ID="ID_685771948" CREATED="1349149843845" MODIFIED="1349152917613">
<node TEXT="User max" ID="ID_1327532886" CREATED="1349149887096" MODIFIED="1349152916525">
<node ID="ID_109943325" CREATED="1349148249456" MODIFIED="1349152738531"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>In /etc/security/limits.conf:
@java            -       nofile          100000

or

In runscript:
ulimit -Sn 16384
ulimit -Hn 16384

</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="System max" ID="ID_1440587300" CREATED="1349149902809" MODIFIED="1349152911967">
<node ID="ID_977278353" CREATED="1349149953641" MODIFIED="1349151060865"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre>sudo sysctl fs.file-nr
UID soft nofile 4096
UID hard nofile 10240</pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node ID="ID_1941010828" CREATED="1349152758458" MODIFIED="1349152899072"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Limits investigation
    </p>
    <p>
      System max:
    </p>
    <p>
      sudo cat /proc/sys/fs/file-max
    </p>
    <p>
      
    </p>
    <p>
      Process max:
    </p>
    <p>
      &#160;sudo cat /proc/&lt;PROCID&gt;/limits
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="apt" ID="ID_784337303" CREATED="1349417159993" MODIFIED="1352167372932">
<node TEXT="purge old kernels" ID="ID_1812555065" CREATED="1349417163711" MODIFIED="1349417173213">
<node TEXT="$ uname -a&#xa;$ sudo apt-get purge linux-image-2.6.32-..." ID="ID_638502076" CREATED="1349417174608" MODIFIED="1349417178329"/>
</node>
</node>
<node TEXT="find" ID="ID_728306435" CREATED="1352172254725" MODIFIED="1352172256722">
<node ID="ID_930307832" CREATED="1352168272371" MODIFIED="1352697981120"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Find newer files:
    </p>
    <p>
      
    </p>
    <p>
      $ touch /tmp/timestamp
    </p>
    <p>
      make changes via the GUI, and then
    </p>
    <p>
      $ find /etc -newer /tmp/timestamp
    </p>
    <p>
      &#160;to find the changed files.
    </p>
    <p>
      
    </p>
    <pre style="text-align: left; text-transform: none; line-height: 20.78333282470703px; letter-spacing: normal; font-style: normal; font-weight: normal; word-spacing: 0px; text-indent: 0px; color: rgb(204, 204, 204); font-variant: normal; background-color: rgb(0, 0, 0)"># touch -t 200904291446.53 /tmp/timestamp<br/># find -newer /tmp/timestamp -ls</pre>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1803984488" CREATED="1352172296974" MODIFIED="1352177868590"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre><b>find / -mtime -2 -ls</b>
</pre>
  </body>
</html>
</richcontent>
</node>
<node TEXT="" ID="ID_1245204934" CREATED="1353987524314" MODIFIED="1353987524314">
<node ID="ID_1770766380" CREATED="1353987532429" MODIFIED="1353987532429"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <span style="background-color: rgb(249, 249, 249); text-indent: 0px; font-weight: normal; display: inline !important; letter-spacing: normal; font-size: 14px; white-space: normal; text-align: left; font-style: normal; font-family: Verdana; line-height: 17px; font-variant: normal; word-spacing: 0px; color: rgb(51, 51, 51); text-transform: none; float: none"><font size="14px" color="rgb(51, 51, 51)" face="Verdana">find&#160;/path/to/files* -mtime +5 -exec rm {} \;</font></span>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="ssh" ID="ID_373819229" CREATED="1352331856487" MODIFIED="1352331858887">
<node TEXT="Passwordless" ID="ID_1493785947" CREATED="1352331860472" MODIFIED="1352331960872">
<node TEXT="$ ssh-keygen -t rsa&#xa;$ ssh-copy-id id@server" ID="ID_31849341" CREATED="1352332151091" MODIFIED="1352332205672"/>
</node>
</node>
<node TEXT="fstab" ID="ID_698125605" CREATED="1353468151290" MODIFIED="1353468154673">
<node ID="ID_1629564935" CREATED="1353468155771" MODIFIED="1353468169226"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre style="padding-left: 0px; text-indent: 0px; margin-right: 0px; font-weight: normal; margin-top: 0px; padding-right: 0px; letter-spacing: normal; font-size: 13.333333969116211px; margin-left: 0px; white-space: pre-wrap; padding-top: 0px; text-align: left; padding-bottom: 0px; font-style: normal; line-height: 17.314815521240234px; margin-bottom: 0px; font-variant: normal; word-spacing: 0px; color: rgb(51, 51, 51); text-transform: none"># data dump tools for popwerpro to maze filedumps
//frmvpappbb01/data /datadump/maze1 cifs username=svcBlackboard,password=@bBoardSVC2010@,uid=glassfish   0 0
//frmvpappbb02/Maze-Integration/data /datadump/maze2 cifs username=svcBlackboard,password=@bBoardSVC2010@,uid=glassfish   0 0</pre>
  </body>
</html>

</richcontent>
</node>
</node>
<node TEXT="tree" ID="ID_381976397" CREATED="1353888775245" MODIFIED="1353888777982">
<node TEXT="tree -a -I .git" ID="ID_1083107987" CREATED="1353888783219" MODIFIED="1353888783219"/>
</node>
<node TEXT="sendmail" ID="ID_437061311" CREATED="1353895179680" MODIFIED="1353895182990">
<node ID="ID_1157162442" CREATED="1353895184145" MODIFIED="1353895214326"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      sendmail -v user@domainname &lt; test.mail<br/><br/>test.mail has&#160;<br/><br/>Subject: test mail<br/>first line of my message<br/>[blank line]
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="Windows" POSITION="right" ID="ID_1525486892" CREATED="1349143916924" MODIFIED="1349143919586">
<node TEXT="Active Directory" ID="ID_465319778" CREATED="1349143926781" MODIFIED="1349143938611"/>
<node TEXT="System Tools" ID="ID_102197244" CREATED="1352166796474" MODIFIED="1352166805859">
<node TEXT="MS Controls (msc)" ID="ID_99558933" CREATED="1352166806916" MODIFIED="1352166817055">
<node TEXT="lusrmgr.msc" ID="ID_1578427271" CREATED="1352166841479" MODIFIED="1352166855203">
<node TEXT="Local User Manager" ID="ID_1610429083" CREATED="1352166857741" MODIFIED="1352166863865"/>
<node ID="ID_247675789" CREATED="1352166903804" MODIFIED="1352166903804"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p class="MsoNormal">
      lusrmgr.msc /computer:frmvpsonia01.nd.edu.au
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="eventvwr.msc" ID="ID_569602013" CREATED="1352167027362" MODIFIED="1352167038854">
<node TEXT="eventvwr.msc /computer:frmvpsonia01" ID="ID_1461349496" CREATED="1352169161849" MODIFIED="1352169177037"/>
</node>
<node TEXT="service.msc" ID="ID_1691728387" CREATED="1352167041190" MODIFIED="1352167047039"/>
<node TEXT="secpol.msc" ID="ID_1463520879" CREATED="1352167047866" MODIFIED="1352167055862"/>
</node>
<node TEXT="exe" ID="ID_1416540459" CREATED="1352166820490" MODIFIED="1352166826710">
<node TEXT="taskmgr.exe" ID="ID_411717284" CREATED="1352167105197" MODIFIED="1352167109545"/>
<node TEXT="regedit.exe" ID="ID_793572026" CREATED="1352167110122" MODIFIED="1352167117795"/>
<node TEXT="mmc.exe" ID="ID_203625493" CREATED="1352167128019" MODIFIED="1352167131075"/>
<node TEXT="msconfig.exe" ID="ID_177371438" CREATED="1352167135397" MODIFIED="1352167139777"/>
<node TEXT="cmd.exe" ID="ID_215636059" CREATED="1352167211804" MODIFIED="1352167215861">
<node TEXT="" ID="ID_1555087949" CREATED="1352178926820" MODIFIED="1352332270387"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      I really hate it when Hal pulls something out of his... uh... ear that is trivially easy to do in Linux with bash but is a real pain in the... uh... neck in Windows cmd.exe. But, saddled with this shell, we must make do.
    </p>
    <p>
      
    </p>
    <p>
      One option we have for getting files' last modification dates and times in Windows cmd.exe is to use the dir command as follows:
    </p>
    <p>
      C:\&gt; dir /a /tw /o-d
    </p>
    <p>
      That'll display the contents of the current directory, with all files regardless of their attributes (/a), showing the timestamp (/t) of the last written time (w), ordered (/o) in reverse (-) by date (d). OK... it's a start. The most recently written-to files (i.e., &quot;modified&quot;) are at the top of the list.
    </p>
    <p>
      
    </p>
    <p>
      But, Hal's find command is doing recursion through the Linux file system. What happens when we add a happy little /s to dir to make it recurse through all of c:\?
    </p>
    <p>
      C:\&gt; dir /a /s /tw /o-d c:\
    </p>
    <p>
      In the words of Steve Jobs, it's a bag of hurt. It just sucks. It sucks horrifically bad. You see, the contents of each directory are displayed, and those files in each directory are sorted by modified date, as we'd like... but it's done on a directory-by-directory basis, without regard to when each directory was altered. Doh! Adding a /b (for bare form of output) doesn't help us, because it that'll leave off the timestamp information that we crave.
    </p>
    <p>
      
    </p>
    <p>
      Often in cmd.exe, if we can't get the file information we'd like from the dir command because of all of its baked-in limitations, we can get far closer to what we want with a FOR loop.
    </p>
    <p>
      
    </p>
    <p>
      So, let's try this again, this time with a FOR loop. We'll use a FOR /R loop, because it recurses through the file system for us, finding files. How about this:
    </p>
    <p>
      C:\&gt; for /r %i in (*) do @echo %~ti, %~fi
    </p>
    <p>
      This loop will recurse (/r) through all subdirectories (*) of our current directory (cd into c:\ if you want to go from the top), with an iterator variable of %i taking on the name of each file that we find. In our do clause, we turn off display of commands (@), and echo to standard output %~ti. That reference will display the timestamp associated with %i (that is, our file). As it turns out, the timestamp displayed here is the last modified time. We then display a comma (you'll see why shortly), followed by %~fi, which is a way to reference the full path of %i.
    </p>
    <p>
      
    </p>
    <p>
      The output here will show modified_time, full_path_to_file, for all files in our given directory and its subdirectories.
    </p>
    <p>
      
    </p>
    <p>
      (BTW, with the FOR /R, our iterator variable will only take on the value of file names... if you want files and directories, you could use FOR /D /R... yup... both /D and /R together in the same FOR loop).
    </p>
    <p>
      
    </p>
    <p>
      You might think that we could sort them using the sort command. Unfortunately, Windows cmd.exe built-in sort is an alphanumeric sort, and cannot in anyway understand the dates we want to sort by. Ouch.
    </p>
    <p>
      
    </p>
    <p>
      So, what can we do? Well, we could dump our output into a csv file thusly:
    </p>
    <p>
      C:\&gt; for /r %i in (*) do @echo %~ti, %~fi &gt;&gt; file_list.csv
    </p>
    <p>
      
    </p>
    <p>
      Now you can see why I put that comma in between the timestamp and full file path. Now, we could open up that csv file in a spreadsheet, and sort it however we want. I know that's kinda cheating with respect to our rules of using only built-in features, but we simply lack a good sort program in cmd.exe. Thus, we often have to create csv's and use a spreadsheet.
    </p>
    <p>
      
    </p>
    <p>
      But, wait... Hal threw us a bone with his follow-up command, which is looking for a file with a very particular date and timestamp during a forensics investigation. We can look for that easily in the output of our FOR /R loop, as follows:
    </p>
    <p>
      C:\&gt; for /r %i in (*) do @echo %~ti, %~fi | find &quot;04/28/2009 02:06 PM&quot;
    </p>
    <p>
      Mr. Bucket mentioned to me that the forfiles command is worthy of a mention in this article. My first thought was... &quot;That's a great tool, but it's only in the Resource Kits.&quot; I've used it before in investigations, and carry it around with me on a USB token along with a ton of other useful tools. But, Mr. Bucket's bringing it up did make me double check... and, lo and behold, forfiles is built-in to Vista and Windows 2008 Server! That's scrumptious! The best news I've had in the last 30 minutes, at the very least. Sorry, but it's not built into earlier versions of Windows, though, but is a separate download from the Resource Kits.
    </p>
    <p>
      
    </p>
    <p>
      Using forfiles can really help us out here, and, on Vista and 2008, we've got it built in. Here's how we can satisfy Hal's original hankerin':
    </p>
    <p>
      C:\&gt; forfiles /p c:\ /s /d -2
    </p>
    <p>
      This one will display files inside of c:\ (the /p means &quot;path&quot;), recursing subdirectories (/s), displaying those with a last modification date earlier than the current date minus two days. Note that the /d option can be used with a date as well, instead of a number of days, with the date expressed in MM/DD/YYYY format. Instead of a -, you can also use a + in front of the number or date to show all files modified after that given date.
    </p>
    <p>
      
    </p>
    <p>
      So, we have many options... dir for really simple stuff, FOR /R and FOR /D /R for more complicated stuff, and forfiles if we're on Vista or 2008. It's nice to have options in life. :)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="start \\frmvpsonia01\d$" ID="ID_1027717415" CREATED="1352184854777" MODIFIED="1352184854777"/>
</node>
<node TEXT="control.exe" ID="ID_1327801683" CREATED="1352167216486" MODIFIED="1352167224079"/>
</node>
<node TEXT="Control Panel Tools" ID="ID_471136346" CREATED="1352166828369" MODIFIED="1352166839205">
<node TEXT="wscui.cpl" ID="ID_1314889038" CREATED="1352167238573" MODIFIED="1352167248127">
<node TEXT="Windows Security Center Control" ID="ID_1060549719" CREATED="1352167256954" MODIFIED="1352167274234"/>
</node>
<node TEXT="firewall.cpl" ID="ID_295286188" CREATED="1352167277289" MODIFIED="1352167287287"/>
<node TEXT="wuacpl.cpl" ID="ID_1403690215" CREATED="1352167287823" MODIFIED="1352167312724">
<node TEXT="Automatic Update Configuration" ID="ID_398600544" CREATED="1352167314196" MODIFIED="1352167335792"/>
</node>
<node TEXT="C:\&gt; dir c:\windows\system32\*.cpl" ID="ID_751085066" CREATED="1352168150996" MODIFIED="1352168164970"/>
</node>
<node TEXT="PowerShell" ID="ID_465360010" CREATED="1349138817568" MODIFIED="1349138822229"/>
</node>
<node TEXT="UNC" ID="ID_896499239" CREATED="1353633441240" MODIFIED="1353633444295"/>
</node>
<node TEXT="LDAP" POSITION="left" ID="ID_601952631" CREATED="1349398531367" MODIFIED="1349398534276">
<node TEXT="ldapsearch -H ldap://nd.edu.au:389 -x -D &quot;cn=svcGlassfish,ou=Service Accounts,ou=Notre Dame,dc=nd,dc=edu,dc=au&quot; -W -b &quot;OU=Notre Dame,DC=nd,DC=edu,DC=au&quot; -s sub -a always -z 10000 &quot;(objectClass=user)&quot; &quot;objectClass&quot;" ID="ID_1598058727" CREATED="1349398557377" MODIFIED="1349398568906"/>
</node>
<node TEXT="GameDev" POSITION="left" ID="ID_970435028" CREATED="1351556557828" MODIFIED="1351556570254">
<node TEXT="Java" ID="ID_555712703" CREATED="1351556571858" MODIFIED="1351556573895">
<node TEXT="JInput" ID="ID_560002833" CREATED="1351556575154" MODIFIED="1351556592664"/>
<node TEXT="JOGL" ID="ID_656165532" CREATED="1351556593332" MODIFIED="1351556602760"/>
</node>
</node>
<node TEXT="Languages" POSITION="right" ID="ID_1908256884" CREATED="1352167955111" MODIFIED="1352167959669">
<node TEXT="Go" ID="ID_1754187340" CREATED="1348850164255" MODIFIED="1348850167158"/>
<node TEXT="Python" ID="ID_1828176012" CREATED="1348850149104" MODIFIED="1348850153927">
<node TEXT="Netbeans IDE" ID="ID_678692757" CREATED="1349334353810" MODIFIED="1349334374563">
<node TEXT=" http://deadlock.netbeans.org/hudson/job/nbms-and-javadoc/lastStableBuild/artifact/nbbuild/nbms/updates.xml.gz " ID="ID_1167935049" CREATED="1349334367898" MODIFIED="1353459215476"/>
</node>
<node TEXT="Jango" ID="ID_1647786644" CREATED="1349397144450" MODIFIED="1349397147526"/>
</node>
<node TEXT="Java" ID="ID_97659285" CREATED="1348850140714" MODIFIED="1349332125823">
<node TEXT="Apache Commons" ID="ID_658813964" CREATED="1349138374480" MODIFIED="1349320666484">
<node TEXT="Configuration" ID="ID_1435195291" CREATED="1349138457382" MODIFIED="1349166800480">
<node TEXT="import org.apache.commons.configuration.XMLConfiguration;&#xa; &#xa;config = new XMLConfiguration();&#xa;config.setDelimiterParsingDisabled(true);&#xa;config.load(configName);" ID="ID_981915872" CREATED="1349138464950" MODIFIED="1349334972982"/>
</node>
</node>
<node TEXT="log4j" ID="ID_335186799" CREATED="1349320669818" MODIFIED="1349320673559"/>
<node TEXT="logback" ID="ID_109557334" CREATED="1349332128527" MODIFIED="1349334726828">
<node TEXT="Maven&#xa;&#xa;&lt;dependency&gt;     &#xa;   &lt;groupId&gt;ch.qos.logback&lt;/groupId&gt;&#xa;    &lt;artifactId&gt;logback-classic&lt;/artifactId&gt;     &#xa;   &lt;version&gt;0.9.18&lt;/version&gt; &#xa;&lt;/dependency&gt;&#xa;" ID="ID_1477195020" CREATED="1349332616442" MODIFIED="1349334558336"/>
</node>
<node TEXT="Glassfish" ID="ID_1606863166" CREATED="1349396979918" MODIFIED="1349396984739">
<node TEXT="HeapSpace" ID="ID_724397092" CREATED="1349396987598" MODIFIED="1349396994171">
<node TEXT="/opt/data/glassfish/3.1.2.2/domains/UniversityOfNotreDame/config/domain.xml&#xa;&lt;jvm-options&gt;-XX:MaxPermSize=512m&lt;/jvm-options&gt;" ID="ID_234120231" CREATED="1349396995559" MODIFIED="1349396999464"/>
</node>
</node>
<node TEXT="Maven" ID="ID_182454358" CREATED="1349397038242" MODIFIED="1349397040871"/>
<node TEXT="slf4j" ID="ID_210199518" CREATED="1349661111664" MODIFIED="1349661115955">
<node TEXT="import org.slf4j.Logger; import org.slf4j.LoggerFactory; private final&#xa;Logger logger = LoggerFactory.getLogger(getClass());" ID="ID_398283009" CREATED="1349661184978" MODIFIED="1349688668858">
<icon BUILTIN="multiplication"/>
</node>
</node>
</node>
<node TEXT="SQL" ID="ID_75139375" CREATED="1348850145440" MODIFIED="1348850148318"/>
<node TEXT="Bash" ID="ID_1217113844" CREATED="1349138827913" MODIFIED="1349138830350"/>
<node TEXT="JavaScript" ID="ID_54475573" CREATED="1348850411178" MODIFIED="1348850417783"/>
</node>
<node TEXT="VM" POSITION="right" ID="ID_6349754" CREATED="1352598008285" MODIFIED="1352598015587">
<node TEXT="KVM" ID="ID_1682658980" CREATED="1352598016986" MODIFIED="1352598021783">
<node TEXT="" ID="ID_1400859708" CREATED="1352598023059" MODIFIED="1352598023059">
<node ID="ID_749586188" CREATED="1352598042616" MODIFIED="1352598042616"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <font face="Arial, sans-serif" size="13.333333015441895px" color="rgb(0, 0, 0)"><span style="white-space: normal; font-family: Arial, sans-serif; text-transform: none; text-align: left; font-style: normal; text-indent: 0px; display: inline !important; background-color: rgb(255, 255, 255); float: none; font-size: 13.333333015441895px; font-variant: normal; color: rgb(0, 0, 0); word-spacing: 0px; letter-spacing: normal; line-height: 15.833333015441895px; font-weight: normal" charset="utf-8">apt-get install kvm</span><br style="white-space: normal; margin-bottom: 0px; text-transform: none; margin-left: 0px; text-indent: 0px; padding-top: 0px; background-color: rgb(255, 255, 255); padding-bottom: 0px; font-variant: normal; word-spacing: 0px; margin-right: 0px; margin-top: 0px; padding-right: 0px; letter-spacing: normal; padding-left: 0px; line-height: 15.833333015441895px" align="left"/><span style="white-space: normal; font-family: Arial, sans-serif; text-align: left; text-transform: none; font-style: normal; text-indent: 0px; display: inline !important; background-color: rgb(255, 255, 255); float: none; font-size: 13.333333015441895px; font-variant: normal; color: rgb(0, 0, 0); word-spacing: 0px; letter-spacing: normal; line-height: 15.833333015441895px; font-weight: normal">qemu-img create hda.img 8G</span><br style="white-space: normal; margin-bottom: 0px; text-transform: none; margin-left: 0px; text-indent: 0px; padding-top: 0px; background-color: rgb(255, 255, 255); padding-bottom: 0px; font-variant: normal; word-spacing: 0px; margin-right: 0px; margin-top: 0px; padding-right: 0px; letter-spacing: normal; padding-left: 0px; line-height: 15.833333015441895px" align="left"/><span style="white-space: normal; font-family: Arial, sans-serif; text-align: left; text-transform: none; font-style: normal; text-indent: 0px; display: inline !important; background-color: rgb(255, 255, 255); float: none; font-size: 13.333333015441895px; font-variant: normal; color: rgb(0, 0, 0); word-spacing: 0px; letter-spacing: normal; line-height: 15.833333015441895px; font-weight: normal">kvm -cdrom sid.iso -hda hda.img -boot d</span></font>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="EE" POSITION="right" ID="ID_1437730834" CREATED="1352703459806" MODIFIED="1352703461862">
<node TEXT="Text To Speach" ID="ID_1408052767" CREATED="1352703464038" MODIFIED="1352703469523">
<node TEXT="TTS256" ID="ID_985399557" CREATED="1352703470670" MODIFIED="1352703473591"/>
</node>
</node>
<node TEXT="regex" POSITION="left" ID="ID_1553070760" CREATED="1352763722593" MODIFIED="1352763730979">
<node ID="ID_1939675709" CREATED="1352763739161" MODIFIED="1352763739161"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre style="padding-top: 0; margin-top: 0; font-style: normal; padding-left: 0; text-transform: none; vertical-align: baseline; margin-right: 0; margin-bottom: 0; font-weight: normal; text-align: start; margin-left: 0; line-height: 1.3em; text-indent: 0px; word-spacing: 0px; background-color: rgb(255, 247, 240); padding-right: 0; color: rgb(34, 34, 34); font-variant: normal; letter-spacing: normal; font-family: Courier New, Courier, monospace; background-repeat: repeat; background-position: initial initial; font-size: 13px; padding-bottom: 0">[ -~]</pre>
  </body>
</html>

</richcontent>
<node ID="ID_412777543" CREATED="1352763827340" MODIFIED="1352763827340"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <span style="background-color: rgb(255, 255, 255); text-indent: 0px; font-weight: normal; display: inline !important; letter-spacing: normal; font-size: 13px; white-space: normal; text-align: start; font-style: normal; font-family: Helvetica Neue, Arial, Helvetica, sans-serif; line-height: 20px; font-variant: normal; word-spacing: 0px; color: rgb(34, 34, 34); text-transform: none; float: none"><font size="13px" color="rgb(34, 34, 34)" face="Helvetica Neue, Arial, Helvetica, sans-serif">matches all ASCII characters from the space to the tilde</font></span>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
<node TEXT="SMTP" POSITION="right" ID="ID_177639198" CREATED="1353550386166" MODIFIED="1353550393196">
<node ID="ID_1272971342" CREATED="1353550394579" MODIFIED="1353550453107"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <table style="padding-top: 0px; margin-top: 0px; font-style: normal; clear: left; padding-left: 0; text-transform: none; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; white-space: normal; font-weight: normal; text-align: left; margin-left: 0; line-height: 1.2em !important; text-indent: 0px; word-spacing: 0px; padding-right: 0; color: rgb(51, 51, 51); font-variant: normal; letter-spacing: normal; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; width: 1746.666748046875px; background-position: initial initial !important; font-size: 12.222222328186035px; padding-bottom: 0px; background-image: none !important" cellpadding="0" cellspacing="0" border="0">
      <tr style="padding-left: 0; vertical-align: baseline !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; color: rgb(51, 51, 51); float: none !important">
        <td style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; background-color: rgb(255, 255, 255); padding-right: 0; color: rgb(51, 51, 51); font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; width: 1746.666748046875px; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="code">
          <div title="Hint: double-click to select code" style="padding-left: 0; vertical-align: baseline !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0px; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="container">
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number1 index0 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">thys</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(128, 128, 128) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java color1"><font size="1" color="rgb(128, 128, 128) !important" face="Courier New">@nddev</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">:~$ nslookup </font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number2 index1 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">&gt; set q=mx</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number3 index2 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">&gt; nd.edu.au</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number4 index3 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">Server:&#160;&#160;&#160;&#160; </font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">127.0</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">0.1</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number5 index4 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">Address:&#160;&#160;&#160; </font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">127.0</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">0.1</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">#</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">53</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number6 index5 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">nd.edu.au&#160;&#160;&#160;mail exchanger = </font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">10</font></code><font size="1" face="Courier New">&#160; </font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">frmpexc03.nd.edu.au.</font></code>
            </div>
          </div>
        </td>
      </tr>
    </table>
    <p>
      
    </p>
    <table style="padding-top: 0px; margin-top: 0px; font-style: normal; clear: left; padding-left: 0; text-transform: none; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; white-space: normal; font-weight: normal; text-align: left; margin-left: 0; line-height: 1.2em !important; text-indent: 0px; word-spacing: 0px; padding-right: 0; color: rgb(51, 51, 51); font-variant: normal; letter-spacing: normal; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; width: 1746.666748046875px; background-position: initial initial !important; font-size: 12.222222328186035px; padding-bottom: 0px; background-image: none !important" cellpadding="0" cellspacing="0" border="0">
      <tr style="padding-left: 0; vertical-align: baseline !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; color: rgb(51, 51, 51); float: none !important">
        <td style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; background-color: rgb(255, 255, 255); padding-right: 0; color: rgb(51, 51, 51); font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; width: 1746.666748046875px; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="code">
          <div title="Hint: double-click to select code" style="padding-left: 0; vertical-align: baseline !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0px; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="container">
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number1 index0 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">thys</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(128, 128, 128) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java color1"><font size="1" color="rgb(128, 128, 128) !important" face="Courier New">@nddev</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">:~$ telnet frmpexc01.nd.edu.au </font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">25</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number2 index1 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">Trying </font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">10.9</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">30.37</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">...</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number3 index2 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">Connected to frmpexc01.nd.edu.au.</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number4 index3 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">Escape character is </font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 51, 102) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java string"><font size="1" color="rgb(0, 51, 102) !important" face="Courier New">'^]'</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number5 index4 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">220</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">frmpexc01.nd.edu.au Microsoft ESMTP MAIL Service ready at Thu, </font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">22</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">Nov </font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">2012</font></code><font size="1" face="Courier New">&#160; </font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">08</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">:</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">33</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">:</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">39</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">+</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">0800</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number6 index5 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">ehlo</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number7 index6 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-frmpexc01.nd.edu.au Hello [</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">10.251</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">81.187</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">]</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number8 index7 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-SIZE</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number9 index8 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-PIPELINING</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number10 index9 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-DSN</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number11 index10 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-ENHANCEDSTATUSCODES</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number12 index11 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-STARTTLS</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number13 index12 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-X-ANONYMOUSTLS</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number14 index13 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-AUTH NTLM</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number15 index14 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-X-EXPS GSSAPI NTLM</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number16 index15 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-8BITMIME</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number17 index16 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-BINARYMIME</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number18 index17 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-CHUNKING</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number19 index18 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-XRDST</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number20 index19 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">XSHADOW</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number21 index20 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">mail from:&lt;thys.meintjes</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(128, 128, 128) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java color1"><font size="1" color="rgb(128, 128, 128) !important" face="Courier New">@nd</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.edu.au&gt;</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number22 index21 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">2.1</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">0</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">Sender OK</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number23 index22 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">rcpt to:&lt;sthysel</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(128, 128, 128) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java color1"><font size="1" color="rgb(128, 128, 128) !important" face="Courier New">@gmail</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.com&gt;</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number24 index23 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">2.1</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">5</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">Recipient OK</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number25 index24 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">data</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number26 index25 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">354</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">Start mail input; end with &lt;CRLF&gt;.&lt;CRLF&gt;</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number27 index26 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">foo my other bar</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number28 index27 alt1">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.</font></code>
            </div>
            <div style="padding-left: 0; vertical-align: baseline !important; background-color: rgb(255, 255, 255) !important; margin-right: 0; background-image: none !important; font-weight: normal; margin-top: 0px; padding-right: 0; font-size: 1em !important; background-repeat: repeat; margin-left: 0; white-space: pre-wrap !important; padding-top: 0px; text-align: left !important; font-style: normal !important; line-height: 1.2em !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; padding-bottom: 0px; margin-bottom: 0px; background-position: initial initial !important; float: none !important" class="line number29 index28 alt2">
              <code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">250</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">2.6</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">0</font></code><font size="1" face="Courier New">&#160;</font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">&lt;0143c26e-</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">9971</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">4366</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">-b64d-27aca80de3e3</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(128, 128, 128) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java color1"><font size="1" color="rgb(128, 128, 128) !important" face="Courier New">@FRMPEXC01</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">.nd.edu.au&gt; [InternalId=</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 153, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java value"><font size="1" color="rgb(0, 153, 0) !important" face="Courier New">17143152</font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">] Queued mail </font></code><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(51, 102, 153) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java keyword"><font size="1" color="rgb(51, 102, 153) !important" face="Courier New">for</font></code><font size="1" face="Courier New">&#160; </font><code style="padding-top: 0px; margin-top: 0px; font-style: normal !important; padding-left: 0; float: none !important; vertical-align: baseline !important; margin-right: 0; margin-bottom: 0px; font-weight: normal; text-align: left !important; margin-left: 0; line-height: 1.2em !important; padding-right: 0; color: rgb(0, 0, 0) !important; font-family: Consolas, Bitstream Vera Sans Mono, Courier New, Courier, monospace !important; background-repeat: repeat; background-position: initial initial !important; padding-bottom: 0px; font-size: 1em !important; background-image: none !important" class="java plain"><font size="1" color="rgb(0, 0, 0) !important" face="Courier New">delivery</font></code>
            </div>
          </div>
        </td>
      </tr>
    </table>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</map>
