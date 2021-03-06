Library ieee;
use ieee.std_logic_1164.all;

Entity Test_Bench is
end Test_Bench;




Architecture Test_ALU of Test_bench is

component ControlUnit is

port ( InstCode : in std_logic_vector(4 downto 0);
       WBSig: out std_logic;
       MWSig: out std_logic;
       MRSig: out std_logic;
       JZSig : out std_logic;
       JNSig : out std_logic;
       JCSig : out std_logic;
       JmpSig : out std_logic;
       CallSig : out std_logic;
       PushSig: out std_logic;
       PopSig: out std_logic;
       RETSig: out std_logic;
       InSig: out std_logic;
       OutSig: out std_logic;
       ExecuteSig: out std_logic_vector(1 downto 0);
       Selectors: out std_logic_vector(3 downto 0) 
       );
       
end component;


signal IC : std_logic_vector(4 downto 0);
signal WBS:  std_logic;
signal MWS: std_logic;
signal MRS: std_logic;
signal JZS :  std_logic;
signal JNS :  std_logic;
signal JCS : std_logic;
signal JmpS :  std_logic;
signal CallS :  std_logic;
signal PushS: std_logic;
signal PopS: std_logic;
signal RETS:  std_logic;
signal InS: std_logic;
signal OutS:  std_logic;
signal ExecuteS:  std_logic_vector(1 downto 0);
signal Sels: std_logic_vector(3 downto 0);
SIGNAL testClk : std_logic :='0';
constant clk_period : time := 10 ns; 
begin
process 
begin
testClk <= '0'; wait for clk_period/2; 
testClk <= '1'; wait for clk_period/2; 
end process;

process
begin

IC <="00000";
wait for clk_period;
IC <="00001";
wait for clk_period;
IC <="00010";
wait for clk_period;
IC <="00011";
wait for clk_period;
IC <="00100";
wait for clk_period;IC <="00101";
wait for clk_period;
IC <="00110";
wait for clk_period;
IC <="00111";
wait for clk_period;
IC <="01000";
wait for clk_period;
IC <="01001";
wait for clk_period;
IC <="01010";
wait for clk_period;
IC <="01011";
wait for clk_period;IC <="01100";
wait for clk_period;
IC <="01101";
wait for clk_period;
IC <="01110";
wait for clk_period;
IC <="01111";
wait for clk_period;
IC <="10000";
wait for clk_period;
IC <="10001";
wait for clk_period;
IC <="10010";
wait for clk_period;IC <="10011";
wait for clk_period;
IC <="10100";
wait for clk_period;
IC <="10101";
wait for clk_period;
IC <="10110";
wait for clk_period;
IC <="10111";
wait for clk_period;
IC <="11000";
wait for clk_period;
IC <="11001";
wait for clk_period;IC <="11010";
wait for clk_period;
IC <="11011";
wait for clk_period;
IC <="11111";
wait for clk_period;


wait;
end process;

CU: ControlUnit port map(IC,WBS,MWS,MRS,JZS,JNS,JCS,JmpS,CallS,PushS,PopS,RETS,InS,OutS,ExecuteS,Sels);

end Test_ALU;
