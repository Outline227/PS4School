cls #Don't Delete

Write-Host @"
Thanks for using Quent's Script, Youre probably at school
To close the script (Game), press 'Q' or the exit button.


Check Frequently My repository for any new games / updates
Github: https://www.example.comMyRepository ; Other Games: https://github.com/Outline227/PS4School/blob/main/Games.CONTENT

                                                          @                                    
                                                          @@                                   
          @@@@                                            @@      @@@                          
         @@@@@@@@                           @@@@@@@@      @@@     @@@  @@@@@@@@@@@@@@@@@       
       @@@@   @@@@@@       @@@         @@  @@@@@@@@@@@@   @@@    @@@@         @@@              
      @@@@       @@@@@@   @@@@        @@@  @@@@           @@@@   @@@         @@@               
     @@@@           @@@@@ @@@         @@@  @@@@           @@@@   @@@         @@@               
   @@@@            @@@@@  @@@         @@@  @@@            @@@@@  @@@         @@@              
  @@@@       @@   @@@@    @@@         @@@  @@@@@@@@       @@@@@ @@@          @@@              
   @@@@@     @@@@@@@      @@@        @@@@  @@@@@@@@@     @@@@@@@@@@         @@@               
     @@@@@    @@@@@       @@@        @@@   @@@           @@@@@@@@@@         @@@                 
       @@@@@ @@@@@@       @@@@      @@@    @@@           @@@ @@@@@@         @@@                 
         @@@@@@  @@@       @@@     @@@@    @@@           @@   @@@@         @@@@                 
           @@@    @@@       @@@@@@@@@@     @@@@@@@@@     @     @@@         @@@                  
                             @@@@@@@       @@@@@@@@@@@   @     @@@         @@@                  
                                                                @@                              
                                                                @                               
"@

pause

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


$DebugLo1 = New-Object System.Windows.Forms.Label; $DebugLo1.Text = "    "; $DebugLo1.AutoSize = $true; $DebugLo1.Font = New-Object System.Drawing.Font("Lucida Console", 150); $DebugLo1.ForeColor = [System.Drawing.Color]::FromArgb(255, 255, 255); $DebugLo1.Location = New-Object System.Drawing.Point(0, 0); $form.Controls.Add($DebugLo1); $DebugLo1.BringToFront(); $DebugLo1.BackColor = [System.Drawing.Color]::FromArgb(255, 0, 0, 0)

#Debugs
$Debug1 = New-Object System.Windows.Forms.Label
$Debug1.Text = "HeartBeat: "
$Debug1.AutoSize = $true
$Debug1.Font = New-Object System.Drawing.Font("Lucida Console", 12)
$Debug1.ForeColor = [System.Drawing.Color]::FromArgb(255, 255, 255)
$Debug1.Location = New-Object System.Drawing.Point(0, 0)
$form.Controls.Add($Debug1)
$Debug1.BringToFront()
$Debug1.BackColor = [System.Drawing.Color]::FromArgb(255, 0, 0, 0)
#
$Debug2 = New-Object System.Windows.Forms.Label
$Debug2.Text = "HeartBeat: "
$Debug2.AutoSize = $true
$Debug2.Font = New-Object System.Drawing.Font("Lucida Console", 12)
$Debug2.ForeColor = [System.Drawing.Color]::FromArgb(255, 255, 255)
$Debug2.Location = New-Object System.Drawing.Point(0, 20)
$form.Controls.Add($Debug2)
$Debug2.BringToFront()
$Debug2.BackColor = [System.Drawing.Color]::FromArgb(255, 0, 0, 0)
#
$Debug3 = New-Object System.Windows.Forms.Label
$Debug3.Text = "PlayerPos: "
$Debug3.AutoSize = $true
$Debug3.Font = New-Object System.Drawing.Font("Lucida Console", 12)
$Debug3.ForeColor = [System.Drawing.Color]::FromArgb(255, 255, 255)
$Debug3.Location = New-Object System.Drawing.Point(0, 40)
$form.Controls.Add($Debug3)
$Debug3.BringToFront()
$Debug3.BackColor = [System.Drawing.Color]::FromArgb(255, 0, 0, 0)
#
$Debug4 = New-Object System.Windows.Forms.Label
$Debug4.Text = "Speed: "
$Debug4.AutoSize = $true
$Debug4.Font = New-Object System.Drawing.Font("Lucida Console", 12)
$Debug4.ForeColor = [System.Drawing.Color]::FromArgb(255, 255, 255)
$Debug4.Location = New-Object System.Drawing.Point(0, 60)
$form.Controls.Add($Debug4)
$Debug4.BringToFront()
$Debug4.BackColor = [System.Drawing.Color]::FromArgb(255, 0, 0, 0)
#
$Debug5 = New-Object System.Windows.Forms.Label
$Debug5.Text = "PlayerPos: "
$Debug5.AutoSize = $true
$Debug5.Font = New-Object System.Drawing.Font("Lucida Console", 12)
$Debug5.ForeColor = [System.Drawing.Color]::FromArgb(255, 255, 255)
$Debug5.Location = New-Object System.Drawing.Point(0, 80)
$form.Controls.Add($Debug5)
$Debug5.BringToFront()
$Debug5.BackColor = [System.Drawing.Color]::FromArgb(255, 0, 0, 0)
##################################################################

#ManagementUI
$Debug1.Visible = $false
$Debug2.Visible = $false
$Debug3.Visible = $false
$Debug4.Visible = $false
$Debug5.Visible = $false

$DebugLo1.Visible = $false
#############


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
$quality = 3
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


$frameCount = 0
$stopwatch = [Diagnostics.Stopwatch]::StartNew()

$renderFrame = {
	$debug.frm += 1
	$Debug3.Text = "Position: X" + $player.x + " Z" + $player.y
	$Debug4.Text = "Speed: " + $player.speed
	$Debug5.Text = "ComonRenderTrace: " + $form.Width / $quality
    $elapsedSeconds = $stopwatch.Elapsed.TotalSeconds
    if ($elapsedSeconds -ge 1) {
		$Debug1.Text = "Fps: " + $debug.frm
		$player.fps = $debug.frm
        $debug.frm = 0
		
		$Debug2.Text = "HeartBeats: " + $debug.htb
        $debug.htb = 0
        $stopwatch.Restart()
    }
	
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
	if ($e.KeyCode -eq [System.Windows.Forms.Keys]::F1) {
		Write-Host gjjj
		if ($keys.F1) {
			$keys.F1 = $false
			
			$DebugLo1.Visible = $false
			$Debug1.Visible = $false
			$Debug2.Visible = $false
			$Debug3.Visible = $false
			$Debug4.Visible = $false
			$Debug5.Visible = $false
		}
		else {
			$keys.F1 = $true
			
			$DebugLo1.Visible = $true
			$Debug1.Visible = $true
			$Debug2.Visible = $true
			$Debug3.Visible = $true
			$Debug4.Visible = $true
			$Debug5.Visible = $true
			
			$Debug1.BringToFront()
			$Debug2.BringToFront()
			$Debug3.BringToFront()
			$Debug4.BringToFront()
			$Debug5.BringToFront()
		}
	}
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

$form.ShowDialog()
