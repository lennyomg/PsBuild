# return

switch($env:ProjectName)
{
	"TestProject1" { "$_ : $env:TargetFramework : $env:TargetDir"  }
	"TestProject2" { dir env: }
  # "TestProject3" { }
}
