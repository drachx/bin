Function Time-It { 
    # Usage:
    # $> ls | timeit
    # $> "hello" | timeit
    # $> ("hello", "world") | timeit
    param (
        [Parameter(ValueFromPipeline=$true)]
        $params
    )

    Process {
        $params | ForEach { if ($_) { Write-Host -NoNewLine $(Get-Date -Format "yyyy-MM-dd HH:mm:ss") " > $_ `n" }}
    }
} 

Function DockerRemoveAll-PS { docker rm  $(docker ps -q -a) }

Set-Alias grep findstr
Set-Alias drma DockerRemoveAll-PS
Set-Alias timeit Time-It
