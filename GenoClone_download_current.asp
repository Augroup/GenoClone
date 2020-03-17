<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
  <title>GenoClone download</title>
  <!-- #include file ="asp\header.inc" -->
  <!-- #include file ="asp\all_track.inc" -->
</head>

<body>

<!-- #include file="asp\redbar.inc" -->

<div id="content_container">
  <!-- PAGE TITLE AREA AND BOX -->

  <!-- #include file="asp\titlearea.inc" -->

  <!-- END PAGE TITLE AREA AND BOX -->
  <div id="content">
    <h2>Downloads</h2>
    <p>
    Copyright and installation instructions are contained within the package. We
    recommend that you consult the <a href="GenoClone_tutorial.asp">tutorial</a> before attempting to use GenoClone. 
    </p>
        
    <table border="1" cellpadding="1">
    <tr>
    <td>
    <a href="files/GenoClone-0.1.tar.gz"  onClick="ga('send', 'event', 'file download', 'click', 'GenoClone download release');"><img src="images/download.png"><b>GenoClone-0.1.tar.gz</b></a>
    </td>
     <td>
    Please see the <a href="GenoClone_download_current.asp#notes">release notes</a> for 
    more information
    </td>
    </tr>

    
    </table>
	
    <div id="notes">
 <h3><img src="images/dna.png"><b>GenoClone 0.1</b> -Release Notes</h3>

<ul>
<li>BAM files and reference FASTA file are used to input of VarScan for obtaining the total mutations (germline and somatic mutaions).
</li>
<li>GenoClone uses the tumor bam files and mutations obtained by VarScan then output the subclones.
</li>
</ul>

  </div>
  </div>
  
<!-- #include file="asp\sidebar.inc" -->
<!-- #include file="asp\footer.inc" -->
  
<!-- end #content -->
</body>

</html>
