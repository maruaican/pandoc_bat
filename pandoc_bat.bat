@echo off
REM ������Word�t�@�C���i.docx�j��Markdown�i.md�j�ɕϊ�����o�b�`
REM �O��Fpandoc���C���X�g�[������Ă��邱��
REM pandoc�����T�C�g�@https://pandoc.org/installing.html
REM pandoc-3.7.0.2-windows-x86_64.msi���_�E�����[�h���ăC���X�g�[��
REM �o�b�`�t�@�C���̌`����ANSI�iShift_JIS�j������BUTF-8���ƁA�]�v�ȋ󔒂�o�b�N�X���b�V���������ē����Ȃ��\��������B

REM ���̃o�b�`�t�@�C���ɕϊ�������.docx�t�@�C�����h���b�O���h���b�v���Ďg�p���Ă�������

for %%f in (%*) do (
    pandoc "%%f" -f docx -t gfm --wrap=preserve -o "%%~dpnf.md"
)

pause
