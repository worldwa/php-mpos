         <tr>
           <td colspan="2"><b><u>周期Share数</u></b> <span id='tt'><img src='{$PATH}/images/questionmark.png' height='15px' width='15px' title='Submitted shares since last found block (ie. round shares)'></span></td>
         </tr>
         <tr>
           <td><b>估算产生一个块需要的share数</b></td>
           <td id="b-target" class="right">{$ESTIMATES.shares} (done: {$ESTIMATES.percent}%)</td>
         </tr>
         <tr>
           <td><b>矿池接受Share数</b></td>
           <td id="b-pvalid" class="right">{$GLOBAL.roundshares.valid}</td>
         </tr>
         <tr>
           <td><b>您的接受Share数<b></td>
           <td id="b-yvalid" class="right">{$GLOBAL.userdata.shares.valid}</td>
         </tr>
         <tr>
           <td><b>矿池拒绝Share数</b></td>
           <td id="b-pivalid" class="right">{$GLOBAL.roundshares.invalid}</td>
         </tr>
         <tr>
           <td><b>您的拒绝Share数</b></td>
           <td id="b-yivalid" class="right">{$GLOBAL.userdata.shares.invalid}</td>
         </tr>
