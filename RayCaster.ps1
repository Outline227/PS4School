# If you realy want to use my script. Please dont be Greedy and credit me.


#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#

cls #Don't Delete

$prompt = [char]27 + "[38;2;0;255;255m" + "Thanks for using Quent's Script, Youre probably at school"
Write-Host $prompt

$prompt = [char]27 + "[38;2;0;255;255m" + "To close the script (Game), press"
Write-Host $prompt -nonewline

$prompt = [char]27 + "[38;2;255;255;0m" + " 'Q' "
Write-Host $prompt -nonewline

$prompt = [char]27 + "[38;2;0;255;255m" + "or the exit button."
Write-Host $prompt 
Write-Host

$prompt = [char]27 + "[38;2;255;0;0m" + "Check Frequently My repository for any new games / updates"
Write-Host $prompt

Write-Host "Github: " -nonewline


$prompt = [char]27 + "[38;2;87;151;255m" + "https://github.com/Outline227/PS4School"
Write-Host $prompt -nonewline
Write-Host " Games: " -nonewline

$prompt = [char]27 + "[38;2;87;151;255m" +"https://github.com/Outline227/PS4School/blob/main/Games.CONTENT"
Write-Host $prompt
Write-Host

$dw1 = [char]27+"[38;2;255;0;0m"+"                                                          @                                    "
$dw2 = [char]27+"[38;2;255;10;0m"+"                                                          @@                                   "
$dw3 = [char]27+"[38;2;255;20;0m"+"          @@@@                                            @@      @@@                          "
$dw4 = [char]27+"[38;2;255;30;0m"+"         @@@@@@@@                           @@@@@@@@      @@@     @@@  @@@@@@@@@@@@@@@@@       "
$dw5 = [char]27+"[38;2;255;40;0m"+"       @@@@   @@@@@@       @@@         @@  @@@@@@@@@@@@   @@@    @@@@         @@@              "
$dw6 = [char]27+"[38;2;255;50;0m"+"      @@@@       @@@@@@   @@@@        @@@  @@@@           @@@@   @@@         @@@               "
$dw7 = [char]27+"[38;2;255;60;0m"+"     @@@@           @@@@@ @@@         @@@  @@@@           @@@@   @@@         @@@               "
$dw8 = [char]27+"[38;2;255;70;0m"+"   @@@@            @@@@@  @@@         @@@  @@@            @@@@@  @@@         @@@               "
$dw9 = [char]27+"[38;2;255;80;0m"+"  @@@@       @@   @@@@    @@@         @@@  @@@@@@@@       @@@@@ @@@          @@@               "
$dwa = [char]27+"[38;2;255;90;0m"+"   @@@@@     @@@@@@@      @@@        @@@@  @@@@@@@@@     @@@@@@@@@@         @@@                "
$dwb = [char]27+"[38;2;255;100;0m"+"     @@@@@    @@@@@       @@@        @@@   @@@           @@@@@@@@@@         @@@                "
$dwc = [char]27+"[38;2;255;110;0m"+"       @@@@@ @@@@@@       @@@@      @@@    @@@           @@@ @@@@@@         @@@                "
$dwd = [char]27+"[38;2;255;120;0m"+"         @@@@@@  @@@       @@@     @@@@    @@@           @@   @@@@         @@@@                "
$dwe = [char]27+"[38;2;255;130;0m"+"           @@@    @@@       @@@@@@@@@@     @@@@@@@@@     @     @@@         @@@                 "
$dwf = [char]27+"[38;2;255;140;0m"+"                             @@@@@@@       @@@@@@@@@@@   @      @@         @@@                 "
$dw0 = [char]27+"[38;2;255;150;0m"+"                                                                 @                             " 

Write-Host $dw1
Write-Host $dw2
Write-Host $dw3
Write-Host $dw4
Write-Host $dw5
Write-Host $dw6
Write-Host $dw7
Write-Host $dw8
Write-Host $dw9
Write-Host $dwa
Write-Host $dwb
Write-Host $dwc
Write-Host $dwd
Write-Host $dwe
Write-Host $dwf
Write-Host $dw0

pause
cls
#End of DOC
Write-Host "This Game may be laggy for some pcs so choose your Resolution"
Write-Host

$dw0 = [char]27+"[38;2;0;255;0m"+ "VHIGH: You must have the best Pc To run on this mode"
$dw1 = [char]27+"[38;2;100;255;0m"+ "HIGH: Higher Quality, (may Decrease Performance)"
$dw2 = [char]27+"[38;2;255;255;0m"+ "MED: Balanced version between Quality and Performance"
$dw3 = [char]27+"[38;2;255;100;0m"+ "LOW / Else: Low Quality, made for slower old pcs / laptops"
$dw4 = [char]27+"[38;2;255;0;0m"+ "VLOW: 101% No Lag"

Write-Host $dw0
Write-Host $dw1
Write-Host $dw2
Write-Host $dw3
Write-Host $dw4

Write-Host
$global:quality = 2
$dec = Read-Host "Res"

switch ($dec) {
	"VHIGH" { $quality = 2 }
    "HIGH" { $quality = 2 }
    "MED" { $quality = 4 }
    "LOW" { $quality = 6 }
	"VLOW" { $quality = 10 }
    default { $quality = 6 }
}
cls

Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName System.Windows.Forms


$form = New-Object Windows.Forms.Form
$form.Text = "Raycaster"
$form.Width = 1024
$form.Height = 720
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$form.MaximizeBox = $false

$pictureBox = New-Object Windows.Forms.PictureBox
$pictureBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$form.Controls.Add($pictureBox)

$bmp = New-Object Drawing.Bitmap $form.Width, $form.Height
$g = [Drawing.Graphics]::FromImage($bmp)
$pictureBox.Image = $bmp

$map = @(
@(3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3),
@(3,0,0,0,2,0,0,0,0,0,3,0,0,0,4,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,5,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,5,5,5,5,5,5,3),
@(3,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,5,0,5,0,0,5,0,0,5,0,5,5,5,5,5,0,0,5,5,0,5,0,0,5,5,5,5,5,5,5,5,5,5,5,5,0,5,0,0,0,0,0,0,3),
@(3,0,0,0,2,0,0,0,0,0,3,0,0,0,4,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,5,0,0,0,0,5,0,0,5,0,5,0,5,5,0,0,5,0,5,0,0,0,0,0,0,0,5,0,5,0,5,5,0,3),
@(3,1,0,1,4,0,0,0,0,0,2,4,0,4,0,0,5,5,0,0,5,0,5,5,5,5,5,5,5,5,5,5,5,5,0,5,0,0,5,0,5,0,0,0,0,0,5,0,5,0,5,5,5,5,5,5,5,0,5,0,5,0,0,3),
@(3,0,0,0,0,0,0,0,0,0,2,0,0,5,0,5,5,5,5,0,5,0,0,5,0,0,0,0,0,5,0,0,5,0,0,0,5,0,5,0,5,5,0,5,5,5,5,0,5,0,5,0,0,5,0,0,0,0,5,0,5,0,5,3),
@(3,0,0,0,0,0,0,0,0,0,2,0,0,5,0,5,5,5,5,0,5,5,0,5,0,4,0,0,0,5,0,0,5,0,5,0,5,0,5,0,5,0,0,5,0,0,0,0,5,0,5,0,0,0,0,5,0,0,5,0,5,0,0,3),
@(3,0,0,0,0,0,0,0,0,0,1,0,0,5,0,0,5,5,0,0,5,0,0,5,0,0,0,5,0,5,0,0,5,0,5,0,5,0,5,0,5,0,5,5,0,5,5,5,5,5,5,5,0,5,5,5,5,5,5,5,5,5,0,3),
@(3,0,0,0,0,0,0,0,0,0,1,0,0,0,5,0,0,0,0,0,5,0,5,5,5,5,0,5,0,0,0,0,5,5,5,0,5,0,5,0,5,0,0,5,0,5,0,0,0,0,0,0,0,5,0,0,0,0,0,5,0,5,0,3),
@(3,0,0,0,0,0,0,0,0,0,1,5,0,0,0,5,0,0,0,0,5,0,0,0,0,5,0,5,5,5,5,0,5,0,0,0,5,0,5,0,5,5,0,5,0,5,0,5,5,5,5,5,0,5,5,5,5,5,0,5,0,5,0,3),
@(3,1,1,1,2,0,2,3,3,3,6,5,5,0,0,0,5,0,0,0,5,5,5,5,0,5,0,5,0,0,0,0,5,0,5,0,5,0,5,0,5,0,0,0,0,5,0,0,0,5,0,5,0,5,0,0,0,5,0,5,0,0,0,3),
@(3,6,0,4,0,0,0,4,0,0,6,5,0,5,0,0,0,5,0,0,5,0,0,0,0,5,0,5,0,0,5,0,5,0,5,0,5,0,5,0,5,0,5,5,5,5,5,5,0,5,0,5,0,5,0,5,0,5,0,5,5,5,5,3),
@(3,6,0,4,0,0,0,4,0,0,6,5,0,0,5,0,0,0,5,0,5,0,0,0,5,5,0,5,0,5,0,0,5,0,5,0,5,0,5,0,5,0,0,5,0,0,0,0,0,5,0,5,0,5,0,5,0,5,0,5,0,0,0,3),
@(3,6,0,4,0,0,0,4,0,0,6,5,0,0,0,5,0,0,5,0,5,0,5,5,5,5,0,5,0,0,5,0,5,0,5,0,5,0,5,0,5,5,0,5,0,5,5,5,5,5,0,5,0,0,0,0,0,0,0,0,0,5,0,3),
@(3,6,0,0,4,0,4,0,0,0,6,5,0,0,0,5,0,0,5,0,5,0,0,0,5,5,0,5,5,0,0,5,5,0,5,0,5,0,5,0,5,0,0,5,0,5,0,0,0,5,0,5,5,5,5,5,5,5,5,5,5,5,0,3),
@(3,6,0,0,0,0,0,0,0,0,6,5,0,0,5,0,0,0,5,0,5,0,0,0,5,5,0,5,0,5,0,5,5,0,5,0,5,0,5,0,5,0,5,5,0,5,0,5,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,3),
@(3,6,0,0,0,0,0,0,0,0,6,5,0,5,0,0,0,5,0,0,5,5,5,0,0,5,0,5,0,0,0,0,5,0,5,0,5,0,5,0,5,0,0,5,0,5,5,5,5,5,5,5,5,5,5,5,5,5,5,0,5,0,5,3),
@(3,6,0,6,0,6,0,6,0,6,6,5,5,0,0,0,5,0,0,0,5,0,0,0,0,5,0,5,0,0,0,0,5,0,5,0,5,0,5,0,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,3),
@(3,6,0,5,0,0,0,0,0,0,6,5,0,0,0,5,0,0,0,5,5,0,0,5,5,5,0,5,0,0,0,0,5,0,5,0,5,0,5,0,5,0,0,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,0,3),
@(3,6,6,0,6,0,6,0,6,0,6,5,0,0,5,0,0,0,5,0,5,0,0,0,0,0,0,5,0,0,5,0,5,0,5,0,5,0,5,0,0,5,0,5,0,5,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3),
@(3,6,0,0,0,0,0,5,0,0,6,5,0,5,0,0,0,5,0,0,5,0,0,5,5,5,5,5,0,0,5,0,5,0,5,0,5,0,0,5,0,0,5,5,0,5,0,8,0,0,0,0,0,0,8,0,0,10,10,10,10,0,0,3),
@(3,6,0,6,0,6,0,6,0,6,6,5,0,5,0,0,5,0,0,0,0,0,0,5,0,5,0,0,5,0,5,0,5,0,5,0,5,0,0,0,5,0,5,5,0,5,0,0,8,0,0,8,0,8,0,8,0,0,0,0,10,0,0,3),
@(3,6,0,5,0,0,0,0,5,0,6,5,0,0,0,5,0,0,0,0,0,0,0,5,0,5,0,0,0,0,5,0,5,0,5,0,5,0,5,0,5,0,5,5,0,5,0,0,0,8,8,0,8,0,0,0,8,0,8,0,10,0,10,3),
@(3,6,6,0,6,0,6,0,6,0,6,5,5,5,5,5,0,0,0,5,5,5,0,5,0,5,0,5,5,5,0,0,5,5,0,0,0,0,0,0,0,0,5,5,0,5,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,10,0,3),
@(3,6,0,0,0,0,0,5,0,0,6,5,0,0,0,0,0,0,0,5,0,0,0,5,0,5,0,0,0,5,0,0,5,0,5,0,5,0,5,0,5,0,5,5,0,5,0,0,0,0,8,0,0,0,0,0,8,0,0,0,10,0,0,3),
@(3,6,0,6,0,6,0,6,0,6,6,5,0,0,5,5,5,5,5,5,5,5,5,11,0,11,5,0,5,5,5,5,5,0,0,0,0,0,0,0,5,0,5,5,0,5,0,8,0,8,0,0,8,0,0,0,0,0,0,10,0,0,10,3),
@(3,6,0,0,5,0,0,0,0,0,6,5,5,0,5,11,11,11,11,11,11,11,11,0,0,0,11,0,11,11,11,11,11,11,11,11,0,0,5,0,5,0,0,5,0,5,0,0,8,0,0,8,0,0,8,0,8,0,0,0,0,10,10,3),
@(3,6,6,0,6,0,6,0,6,0,6,0,0,0,5,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,11,0,9,0,5,0,0,0,5,0,5,0,8,0,8,0,0,0,8,0,8,0,0,0,8,0,0,10,3),
@(3,6,0,0,0,0,5,0,0,5,6,0,5,0,5,11,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,0,11,0,0,11,0,9,0,5,0,0,0,5,0,5,8,0,0,0,8,0,8,0,0,0,0,0,8,0,8,0,0,3),
@(3,6,0,6,0,6,0,6,0,6,6,0,5,0,5,11,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,0,11,0,0,11,0,9,0,0,0,5,0,5,0,5,0,0,0,0,0,8,0,0,0,8,0,8,0,0,0,8,0,3),
@(3,5,0,0,0,0,0,5,0,0,0,0,5,0,5,11,0,11,0,11,0,11,0,0,0,11,0,11,0,11,0,0,0,0,0,11,9,0,0,0,0,5,0,5,0,5,0,0,0,0,0,0,8,0,8,0,8,0,0,0,0,8,0,3),
@(3,5,5,5,5,5,5,5,5,5,5,5,5,5,5,11,0,11,0,11,0,11,11,11,11,11,0,11,0,11,0,0,0,0,0,11,0,0,0,9,0,5,0,5,0,5,0,8,0,0,0,8,0,0,0,0,0,0,0,8,0,8,0,3),
@(3,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,0,11,0,11,0,11,0,0,0,11,0,11,0,11,11,11,11,11,11,11,0,9,0,0,9,0,0,5,0,5,0,0,8,0,0,0,8,0,0,0,8,0,8,0,0,8,0,3),
@(3,11,0,0,0,11,0,0,0,11,0,0,0,11,0,0,0,0,0,11,0,11,0,11,0,0,0,11,0,0,0,0,0,0,0,11,0,9,0,0,9,0,0,5,0,5,0,8,0,8,0,0,0,8,0,8,0,8,0,0,8,0,8,3),
@(3,11,0,11,0,0,0,11,0,0,0,11,0,0,0,11,0,0,0,0,0,11,0,0,11,0,0,11,0,0,0,0,0,0,0,11,0,9,0,9,9,9,9,9,0,5,0,8,0,0,8,0,0,0,8,0,0,0,0,8,0,0,0,3),
@(3,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,0,11,11,11,11,11,11,11,11,11,11,11,11,0,9,0,0,0,0,0,9,0,9,0,8,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,3),
@(3,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,11,0,9,0,9,0,0,0,9,0,9,0,0,0,0,8,0,0,0,0,0,0,0,8,0,8,8,0,3),
@(3,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,11,0,11,11,0,11,0,0,0,7,8,0,11,0,9,9,0,0,9,0,9,0,9,8,0,0,0,8,8,8,8,8,8,8,8,8,0,0,8,0,3),
@(3,0,0,11,0,0,0,0,0,0,0,0,0,11,11,11,11,0,11,0,11,11,11,11,0,11,0,0,11,0,0,0,8,7,0,11,0,9,0,0,9,0,0,9,0,9,0,8,0,0,0,0,0,0,8,0,0,0,8,0,8,8,8,3),
@(3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,11,0,11,11,0,11,0,7,8,0,11,9,0,0,9,0,0,0,9,0,9,0,0,8,0,0,0,0,8,0,0,8,0,0,0,0,0,0,3),
@(3,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,11,0,11,11,11,11,0,11,11,11,0,0,0,0,11,0,0,0,0,11,0,0,0,9,9,0,9,9,0,9,8,0,8,8,0,0,8,0,0,8,0,8,8,0,8,0,0,3),
@(3,0,0,0,11,0,11,0,0,0,0,0,0,0,0,0,11,0,0,0,0,11,0,0,0,11,11,11,11,11,11,11,11,11,0,11,0,0,9,0,0,0,0,9,0,9,8,0,8,0,8,0,0,0,8,0,0,0,0,8,0,0,8,3),
@(3,0,0,11,0,0,0,11,0,0,0,0,0,0,0,0,11,11,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,9,0,0,0,0,0,9,0,9,8,0,8,0,0,0,0,8,0,8,0,0,0,0,0,8,0,3),
@(3,0,0,11,0,0,11,0,0,0,0,0,0,0,0,0,11,11,11,0,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,9,0,0,0,0,9,9,0,9,8,0,0,0,8,0,8,0,0,0,8,0,0,0,8,0,0,3),
@(3,0,0,11,0,0,11,0,0,0,11,0,0,0,0,0,11,11,11,11,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,9,0,0,0,9,9,9,0,9,8,0,0,8,0,0,0,8,0,0,0,8,0,8,0,0,8,3),
@(3,0,11,0,0,0,0,11,0,0,0,11,0,0,0,0,11,0,0,0,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,9,0,0,9,9,0,0,0,9,8,0,8,0,0,8,0,0,0,0,0,0,8,0,0,8,7,3),
@(3,11,0,0,0,0,0,11,0,0,0,0,11,0,0,0,11,0,0,11,11,11,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,9,9,0,0,9,0,9,9,9,8,8,0,0,8,0,8,0,0,8,0,7,0,0,8,0,7,3),
@(3,0,0,0,11,0,0,0,0,11,0,0,11,0,0,0,11,0,11,0,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,9,0,9,0,9,0,9,0,9,8,0,0,8,0,0,0,8,0,0,8,0,0,8,0,0,7,3),
@(3,0,0,0,0,11,0,0,11,0,0,11,0,0,0,0,11,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,9,0,0,0,0,0,0,0,9,0,0,8,0,0,8,0,0,8,0,0,0,0,0,7,0,7,3),
@(3,0,11,0,0,11,0,0,0,11,0,0,0,0,0,0,11,0,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,9,0,9,9,9,9,9,9,9,0,0,8,0,0,8,0,0,0,0,0,8,0,0,7,0,7,3),
@(3,0,11,0,0,11,0,0,0,11,11,0,0,0,0,0,11,0,11,11,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,9,0,0,0,9,0,0,0,9,8,0,8,0,8,0,8,0,0,0,8,0,0,7,0,0,7,3),
@(3,0,11,0,0,0,11,0,11,0,0,11,0,11,0,0,11,0,11,0,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,11,0,9,0,0,0,9,0,0,0,9,7,8,8,8,0,0,0,8,0,8,0,0,7,0,0,7,7,3),
@(3,0,0,0,0,0,0,11,0,0,0,0,11,12,11,0,11,0,0,0,11,11,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,9,9,9,9,9,9,9,0,9,7,0,8,0,0,7,0,0,8,0,0,0,7,0,7,7,0,3),
@(3,0,0,11,0,0,0,0,0,0,0,0,12,12,12,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,0,9,0,0,0,0,0,0,0,9,7,0,0,0,7,0,7,0,0,0,0,7,7,0,7,0,0,3),
@(3,0,0,0,11,0,0,0,11,0,0,0,12,0,0,0,12,0,0,0,0,0,0,0,12,14,14,14,14,14,14,14,14,14,12,11,0,0,0,0,4,9,9,9,9,9,7,0,0,7,0,0,0,7,0,0,7,0,0,0,7,0,0,3),
@(3,0,0,0,0,11,0,11,0,11,0,0,12,0,0,0,0,12,0,0,0,0,0,12,12,12,0,0,0,0,0,0,0,12,0,11,0,0,0,9,4,7,7,7,7,7,7,0,7,0,0,7,0,0,7,7,0,0,7,7,7,0,0,3),
@(3,0,0,0,0,0,11,0,0,11,0,0,12,0,0,12,0,0,12,0,0,0,12,0,0,0,12,12,0,0,0,0,12,0,0,11,0,0,0,0,4,7,0,0,0,7,0,0,0,0,7,7,7,0,0,0,0,7,7,0,0,0,0,3),
@(3,11,0,0,0,0,0,0,0,11,0,0,0,0,0,0,12,0,0,12,0,12,0,0,0,0,0,0,12,0,0,12,0,0,0,11,0,9,9,0,4,7,0,0,7,0,0,7,7,7,7,7,7,7,7,7,7,7,0,0,7,7,0,3),
@(3,12,11,0,0,0,0,0,11,12,0,0,0,0,0,12,12,0,0,0,0,12,12,0,0,12,0,12,0,12,0,0,0,0,12,11,9,0,0,0,4,7,0,7,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,7,0,0,0,3),
@(3,12,12,11,0,0,0,11,12,12,0,0,0,0,12,0,0,0,12,12,12,0,0,0,0,0,12,0,0,0,0,0,0,12,0,0,0,0,0,0,4,7,0,0,0,7,0,7,0,0,7,0,0,0,0,0,0,7,7,0,0,0,7,3),
@(3,14,0,12,11,11,11,12,12,0,0,0,0,12,0,0,12,0,0,0,0,0,0,12,0,12,0,0,0,0,0,12,0,12,0,11,0,0,0,1,7,7,7,0,7,0,0,0,7,0,0,7,0,0,0,7,7,0,0,0,0,7,0,3),
@(3,12,0,0,12,12,12,0,0,0,0,0,12,12,0,12,12,0,12,0,0,0,12,12,12,12,0,0,12,0,12,0,0,0,0,11,0,0,0,1,7,7,0,7,0,0,0,0,0,7,0,0,7,0,7,0,0,0,7,7,7,0,0,3),
@(3,12,12,0,0,0,0,0,12,12,0,0,12,0,0,0,12,0,0,12,0,0,0,0,0,0,0,12,0,0,0,12,0,0,0,11,0,0,0,1,7,7,0,0,0,0,0,0,0,0,0,7,0,0,0,7,0,0,0,0,0,0,0,3),
@(3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,13,14,13,14,13,3)
)


$colors = @{
    1 = [Drawing.Color]::FromArgb(255, 255, 0, 0)
    2 = [Drawing.Color]::FromArgb(255, 0, 255, 0)
    3 = [Drawing.Color]::FromArgb(255, 0, 0, 255)
    4 = [Drawing.Color]::FromArgb(255, 255, 255, 0)
    5 = [Drawing.Color]::FromArgb(255, 0, 255, 255)
    6 = [Drawing.Color]::FromArgb(255, 255, 0, 255)
    7 = [Drawing.Color]::FromArgb(255, 192, 192, 192)
    8 = [Drawing.Color]::FromArgb(255, 128, 128, 128)
    9 = [Drawing.Color]::FromArgb(255, 255, 165, 0)
    10 = [Drawing.Color]::FromArgb(255, 255, 105, 180)
    11 = [Drawing.Color]::FromArgb(255, 0, 128, 0)
    12 = [Drawing.Color]::FromArgb(255, 0, 0, 139)
    13 = [Drawing.Color]::FromArgb(255, 0, 0, 0)
    14 = [Drawing.Color]::FromArgb(255, 255, 255, 255)
    15 = [Drawing.Color]::FromArgb(255, 255, 0, 255)
    16 = [Drawing.Color]::FromArgb(255, 0, 255, 0)
}

$player = @{
    x = 1.5
    y = 1.5
    angle = 0.0
    initspeed = 0.03
    turnspeed = 0.06
    speed = 0
	fps = 50
}
$debug = @{
	frm=0
	htb=0
	px=0
	py=0
}
$keys = @{
    W = $false
    S = $false
    A = $false
    D = $false
	F1 = $false
}

$FogStart = 0
$FogEnd = 20
$FogColor = [Drawing.Color]::FromArgb(0, 0, 0)

function CheckCollision {
    param ($x, $y)
    $mapX = [Math]::Floor($x)
    $mapY = [Math]::Floor($y)
    if ($map[$mapY] -and $map[$mapY][$mapX] -gt 0) { return $true }
    return $false
}

$movePlayer = {
    $prevX = $player.x
    $prevY = $player.y
    if ($keys.Shift) { $player.speed = $player.initspeed * 2 } else { $player.speed = $player.initspeed }
    if ($keys.W) { $player.x += [Math]::Cos($player.angle) * $player.speed; $player.y += [Math]::Sin($player.angle) * $player.speed }
    if ($keys.S) { $player.x -= [Math]::Cos($player.angle) * $player.speed; $player.y -= [Math]::Sin($player.angle) * $player.speed }
    if ($keys.A) { $player.angle -= $player.turnspeed }
    if ($keys.D) { $player.angle += $player.turnspeed }
    if (CheckCollision -x $player.x -y $player.y) { $player.x = $prevX; $player.y = $prevY }
}


$renderFrame = {
    $movePlayer.Invoke()
    $g.Clear([Drawing.Color]::Black)
    for ($x = 0; $x -lt $form.Width; $x += $quality) {
		$debug.htb += 1
        $cameraX = 2 * $x / $form.Width - 1
        $rayDirX = [Math]::Cos($player.angle) + $cameraX * [Math]::Cos($player.angle + [Math]::PI / 2)
        $rayDirY = [Math]::Sin($player.angle) + $cameraX * [Math]::Sin($player.angle + [Math]::PI / 2)
        $mapX = [Math]::Floor($player.x)
        $mapY = [Math]::Floor($player.y)
        $sideDistX = 0.0
        $sideDistY = 0.0
        $deltaDistX = [Math]::Abs(1 / $rayDirX)
        $deltaDistY = [Math]::Abs(1 / $rayDirY)
        $stepX = 0
        $stepY = 0
        $hitWall = $false
        $side = 0

        if ($rayDirX -lt 0) {
            $stepX = -1
            $sideDistX = ($player.x - $mapX) * $deltaDistX
        } else {
            $stepX = 1
            $sideDistX = ($mapX + 1.0 - $player.x) * $deltaDistX
        }
        if ($rayDirY -lt 0) {
            $stepY = -1
            $sideDistY = ($player.y - $mapY) * $deltaDistY
        } else {
            $stepY = 1
            $sideDistY = ($mapY + 1.0 - $player.y) * $deltaDistY
        }

        while (-not $hitWall) {
            if ($sideDistX -lt $sideDistY) {
                $sideDistX += $deltaDistX
                $mapX += $stepX
                $side = 0
            } else {
                $sideDistY += $deltaDistY
                $mapY += $stepY
                $side = 1
            }
            if ($map[$mapY] -and $map[$mapY][$mapX] -gt 0) { $hitWall = $true }
        }

        if ($side -eq 0) {
            $perpWallDist = ($mapX - $player.x + (1 - $stepX) / 2) / $rayDirX
        } else {
            $perpWallDist = ($mapY - $player.y + (1 - $stepY) / 2) / $rayDirY
        }

        $lineHeight = [Math]::Floor($form.Height / $perpWallDist)
        $lineStart = [Math]::Max(0, [Math]::Floor(($form.Height / 2) - ($lineHeight / 2)))
        $lineEnd = [Math]::Min($form.Height, [Math]::Floor(($form.Height / 2) + ($lineHeight / 2)))

        $fogFactor = ($perpWallDist - $FogStart) / ($FogEnd - $FogStart)
        if ($fogFactor -lt 0) { $fogFactor = 0 }
        if ($fogFactor -gt 1) { $fogFactor = 1 }

        $color = $colors[$map[$mapY][$mapX]]
        $finalColor = [Drawing.Color]::FromArgb(
            [Math]::Round($fogFactor * $FogColor.R + (1 - $fogFactor) * $color.R),
            [Math]::Round($fogFactor * $FogColor.G + (1 - $fogFactor) * $color.G),
            [Math]::Round($fogFactor * $FogColor.B + (1 - $fogFactor) * $color.B)
        )
        
        $pen = New-Object Drawing.Pen $finalColor, $quality
        $g.DrawLine($pen, $x, $lineStart, $x, $lineEnd)
    }
    $pictureBox.Image = $bmp
}

$timer = New-Object Windows.Forms.Timer
$timer.Interval = 1
$timer.Add_Tick($renderFrame)
$timer.Start()


$form.add_KeyDown({
    param ($sender, $e)
    if ($e.KeyCode -eq "W") { $keys.W = $true }
    if ($e.KeyCode -eq "S") { $keys.S = $true }
    if ($e.KeyCode -eq "A") { $keys.A = $true }
    if ($e.KeyCode -eq "D") { $keys.D = $true }
    if ($e.Shift) { $keys.Shift = -not $keys.Shift }
	if ($e.KeyCode -eq "Q") {
       $pid = $PID
	   Start-Process powershell -ArgumentList "-Command Stop-Process -Id $pid"
    }

})

$form.add_KeyUp({
    param ($sender, $e)
    if ($e.KeyCode -eq "W") { $keys.W = $false }
    if ($e.KeyCode -eq "S") { $keys.S = $false }
    if ($e.KeyCode -eq "A") { $keys.A = $false }
    if ($e.KeyCode -eq "D") { $keys.D = $false }
})
$hwnd = (Get-Process -Id $PID).MainWindowHandle
Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class WinAPI {
    [DllImport("user32.dll")]
    public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
}
"@
[WinAPI]::ShowWindow($hwnd, 6)

$form.ShowDialog()
