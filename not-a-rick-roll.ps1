cleanUp

Write-Host "Welcome to my application where you definitely won't get Rick Rolled"

Write-Host "and who do I have the pleasure of speaking to?"

Write-Host `n

$user = Read-Host "Enter your name"

cleanUp

Write-Host "Sick name, $user hypothetically speaking, do you like the workings of Rick Astley?"

$response = Read-Host "y/n"

cleanUp

responseChecker
function responseChecker() {
    switch($response) {
        'y' {redirect1}
        'n' {noResponse}
        'Y' {redirect1}
        'N' {noResponse}
        default {
            Clear-Host
            $response = Read-Host "Your response can only be y or n"
            responseChecker
        }
    }
}

function cleanUp() {
    Clear-Host
    Write-Host `n
}

function noResponse() {
    Write-Host "Alright well I guess I wont Rick Roll you"
    pauseResponse
    Write-Host "Just kidding you're still getting Rolled..."
    Write-Host "nothing personal $user" 
    Start-Sleep -Seconds 1
    redirect2
}

function pauseResponse() {
    Start-Sleep -Seconds 1
    Write-Host "."
    Start-Sleep -Seconds 1
    Write-Host ".."
    Start-Sleep -Seconds 1
    Write-Host "..."
}

function redirect1() {
    Start-Process "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
    Exit
}

function redirect2() {
    Start-Process "https://www.youtube.com/watch?v=CAZ8kTQ49c8"
    Exit
}

