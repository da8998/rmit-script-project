# Calculator v1.00 - Dylan Armstrong J2GA

# Main loop that does stuff
do {
    Write-Host "Enter two numbers"
    $num1 = Read-Host "Enter first number: "
    $num2 = Read-Host "Enter second number: "
    
    $op = Read-Host "Enter operation [1 -> +] [2 -> -] [3 -> *] [4 -> /]"

    if($num1 -and $num2 -and $op) {
        $num1 = [int]$num1
        $num2 = [int]$num2
        switch($op) {
            "1" {
                $ans = $num1 + $num2
            }

            "2" {
                $ans = $num1 - $num2
            }

            "3" {
                $ans = $num1 * $num2
            }

            "4" {
                $ans = $num1 / $num2
            }
            default {
                Write-Host "Bad operation entered: " + $op
            }
            
        }
        Write-Host "Answer is: $ans"
    }
    $repeat = Read-Host "Go again?"
} while ($repeat -eq "y")