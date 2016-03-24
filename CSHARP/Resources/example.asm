.intel_syntax noprefix

# void bitswap_gas(unsigned int * const data, const unsigned long long pos1, const unsigned long long pos2) // rcx, rdx, r8, r9
# rcx <= data
# rdx <= pos1
# r8 <= pos2
# https://msdn.microsoft.com/en-us/library/9z1stfyw.aspx
# https://software.intel.com/sites/landingpage/IntrinsicsGuide/

.text                                           # Code section
.global bitswap_gas
bitswap_gas: 

	#region TODO
	call 		for_write_seq_fmt
    mov 		rsi, QWORD PTR [network_c_mp_network_neurons]
	prefetcht0 	BYTE PTR [122000+rsi+rdi*4]
	jg 			.B38.34 	# make the label be selectable (dot should not be a word seperator)
	.xdata
	.pdata
	_TEXT		ENDS
	_TEXT		SEGMENT      'CODE'
	network_c_mp_init_topology_izhikevich	PROC 
	vmovups xmm4, XMMWORD PTR [.T1737_.0.17+64] ;H:\Dropbox\sc\ScHJ\CWS\Spike\Spike-Fortran-Main\src\network_c.f90:1037.37
	#endregion
	
	

	#region allRegisters
	RAX 
    EAX 
    AX 
    AL 
    AH 

    RBX 
    EBX 
    BX 
    BL 
    BH 

    RCX 
    ECX 
    CX 
    CL 
    CH 

    RDX 
    EDX 
    DX 
    DL 
    DH 

    RSI 
    ESI 
    SI 
    SIL 

    RDI 
    EDI 
    DI 
    DIL 

    RBP 
    EBP 
    BP 
    BPL 

    RSP 
    ESP 
    SP 
    SPL 

    R8 
    R8D 
    R8W 
    R8B 

    R9 
    R9D 
    R9W 
    R9B 

    R10 
    R10D 
    R10W 
    R10B 

    R11 
    R11D 
    R11W 
    R11B 

    R12 
    R12D 
    R12W 
    R12B 

    R13 
    R13D 
    R13W 
    R13B 

    R14 
    R14D 
    R14W 
    R14B 

    R15 
    R15D 
    R15W 
    R15B

    MM0 
    MM1 
    MM2 
    MM3 
    MM4 
    MM5 
    MM6 
    MM7 

    XMM0 
    XMM1 
    XMM2 
    XMM3 
    XMM4 
    XMM5 
    XMM6 
    XMM7 

    XMM8 
    XMM9 
    XMM10 
    XMM11 
    XMM12 
    XMM13 
    XMM14 
    XMM15 

    YMM0 
    YMM1 
    YMM2 
    YMM3 
    YMM4 
    YMM5 
    YMM6 
    YMM7 

    YMM8 
    YMM9 
    YMM10 
    YMM11 
    YMM12 
    YMM13 
    YMM14 
    YMM15 

    ZMM0 
    ZMM1 
    ZMM2 
    ZMM3 
    ZMM4 
    ZMM5 
    ZMM6 
    ZMM7 

    ZMM8 
    ZMM9 
    ZMM10 
    ZMM11 
    ZMM12 
    ZMM13 
    ZMM14 
    ZMM15 

    ZMM16 
    ZMM17 
    ZMM18 
    ZMM19 
    ZMM20 
    ZMM21 
    ZMM22 
    ZMM23 

    ZMM24 
    ZMM25 
    ZMM26 
    ZMM27 
    ZMM28 
    ZMM29 
    ZMM30 
    ZMM31 
	#endregion


	mov         r9,rdx
	shr         rdx,5
	and         r9,0x1F

	mov         r10,r8
	shr         r8,5
	and         r10,0x1F

	btr         dword [rcx+4*rdx],r9d
	jnc         label1

	bts         dword [rcx+4*r8],r10d
	jmp         label2
label1:
	btr         dword [rcx+4*r8],r10d
label2:
	jnc         label3
	bts         dword [rcx+4*rdx],r9d
label3:

	ret

.att_syntax


#000000013F2CB440 4C 8B CA             mov         r9,rdx  
#000000013F2CB443 4D 8B D0             mov         r10,r8  
#000000013F2CB446 48 C1 EA 05          shr         rdx,5  
#000000013F2CB44A 49 C1 E8 05          shr         r8,5  
#000000013F2CB44E 49 83 E1 1F          and         r9,1Fh  
#000000013F2CB452 49 83 E2 1F          and         r10,1Fh  
#000000013F2CB456 44 0F B3 0C 91       btr         dword ptr [rcx+rdx*4],r9d  
#000000013F2CB45B 73 07                jae         bitswap_asm+24h (013F2CB464h)  
#000000013F2CB45D 46 0F AB 14 81       bts         dword ptr [rcx+r8*4],r10d  
#000000013F2CB462 EB 05                jmp         bitswap_asm+29h (013F2CB469h)  
#000000013F2CB464 46 0F B3 14 81       btr         dword ptr [rcx+r8*4],r10d  
#000000013F2CB469 73 05                jae         bitswap_asm+30h (013F2CB470h)  
#000000013F2CB46B 44 0F AB 0C 91       bts         dword ptr [rcx+rdx*4],r9d  
#000000013F2CB470 C3                   ret  
