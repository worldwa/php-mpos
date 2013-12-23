
         <tr>
           <td colspan="2"><b><u>{$GLOBAL.config.currency}收入预估</u></b></td>
         </tr>
{if $GLOBAL.config.payout_system != 'pps'}
         <tr>
           <td><b>块</b></td>
           <td id="b-block" class="right">{$GLOBAL.userdata.estimates.block}</td>
         </tr>
         <tr>
           <td><b>手续费</b></td>
           <td id="b-fee" class="right">{$GLOBAL.userdata.estimates.fee}</td>
         </tr>
         <tr>
           <td><b>捐赠</b></td>
           <td id="b-donation" class="right">{$GLOBAL.userdata.estimates.donation}</td>
         </tr>
         <tr>
           <td><b>支付</b></td>
           <td id="b-payout" class="right">{$GLOBAL.userdata.estimates.payout}</td>
         </tr>
{else}
        <tr>
          <td><b>1小时</b></td>
          <td id="b-est1hour" align="left">{$GLOBAL.userdata.estimates.hours1|round:"8"}</td>
        </tr>
        <tr>
          <td><b>24小时</b></td>
          <td id="b-est24hours" align="left">{($GLOBAL.userdata.estimates.hours24)|round:"8"}</td>
        </tr>
        <tr>
          <td><b>7天</b></td>
          <td id="b-est7days" align="left">{($GLOBAL.userdata.estimates.days7)|round:"8"}</td>
        </tr>
        <tr>
          <td><b>14天</b></td>
          <td id="b-est14days" align="left">{($GLOBAL.userdata.estimates.days14)|round:"8"}</td>
        </tr>
        <tr>
          <td><b>30天</b></td>
          <td id="b-est30days" align="left">{($GLOBAL.userdata.estimates.days30)|round:"8"}</td>
        </tr>
{/if}
