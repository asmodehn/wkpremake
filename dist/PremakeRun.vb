Imports System
Imports EnvDTE
Imports EnvDTE80
Imports EnvDTE90
Imports EnvDTE90a
Imports EnvDTE100
Imports System.Diagnostics

Public Module PremakeRun
    Sub RunPremake()
        If Not DTE.Solution Is Nothing And Not String.IsNullOrEmpty(DTE.Solution.FullName) Then
            Dim solutionPath, solutionDir, premakeTarget, premakeFlags, premakeExePath, premakeScriptDir As String
            solutionPath = DTE.Solution.FullName
            solutionDir = solutionPath.Substring(0, solutionPath.LastIndexOf("\"))
            premakeTarget = solutionDir.Substring(solutionDir.LastIndexOf("\") + 1)

            ' You might need to adjust these
            premakeFlags = ""
            premakeExePath = solutionDir + "\..\..\premake4.exe"
            premakeScriptDir = solutionDir + "\..\.."

            DTE.ExecuteCommand("File.CloseSolution")

            ChDir(premakeScriptDir)
            Dim command As String
            command = premakeExePath + " " + premakeFlags + " " + premakeTarget
            Shell(command, AppWinStyle.NormalFocus, True)

            DTE.Solution.Open(solutionPath)
        Else
            MsgBox("No solution!")
        End If
    End Sub

End Module
