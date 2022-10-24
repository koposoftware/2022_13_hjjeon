package kr.ac.kopo.account.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Random;
import java.util.UUID;

import org.json.JSONObject;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.account.vo.AccountVO;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class AccountService {
	
	@Autowired
	private AccountDAO accountDAO;
	
	public String makeAccountNumber(String id) {
		
		String accountNum = "";
		Random r = new Random();
		String randomNum = Integer.toString(r.nextInt(10000)+90000);
		char[] userId = id.toCharArray();
		for(int i = 0; i < 2; i++) {
			int num = (int)userId[i];
			accountNum += Integer.toString(num);
		}
		return "17" + accountNum + randomNum;
	}
	
	public void insertAccount(AccountVO account) {
		accountDAO.insertAccount(account);
	}
	
	public AccountVO selectAccountByUserId(String userId) {
		AccountVO account = accountDAO.selectAccountByUserId(userId);
		return account;
	}
	
	public void sendPhoneAuth(String phoneNumber,int randomNumber) {
		String app_key = "NCSL1HTBAOAXKYVB";
		String api_secret = "VYJERCL6RT8FYWHBA9M2CD9VUP1XFQHT";
		Message coolms = new Message(app_key, api_secret);
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to",phoneNumber);
		params.put("from", "01099791943");
		
		params.put("type", "SMS");
		params.put("text","하나랜드 본인인증 번호는 ["+randomNumber+"] 입니다.");
		params.put("app_version", "test app 1.2");
		
		try {
			org.json.simple.JSONObject obj = (org.json.simple.JSONObject) coolms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
				System.out.println(e.getMessage());
				System.out.println(e.getCode());
		}
	}
	
	public String fileOCR(String fileName) {
	      String apiURL = "https://n5b230b18f.apigw.ntruss.com/custom/v1/18451/b72c0b7986ea517c9fb0d97f50508485ae141146f50793b1031c2a5c529febf9/general";
	      String secretKey = "V2dpcEROQkNwRGh1SEpBQVdIY1hnTGRYcFlrZXJ5clE=";
	      String imageFile = "/Users/jun/Desktop/전형진/코포 데이터분석과/spring/spring-workspace/finalproject1/src/main/webapp/resources/file/"+fileName; // 파일 입력 

	      try {
	         URL url = new URL(apiURL);
	         HttpURLConnection con = (HttpURLConnection)url.openConnection();
	         con.setUseCaches(false);
	         con.setDoInput(true);
	         con.setDoOutput(true);
	         con.setReadTimeout(30000);
	         con.setRequestMethod("POST");
	         String boundary = "----" + UUID.randomUUID().toString().replaceAll("-", "");
	         con.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary);
	         con.setRequestProperty("X-OCR-SECRET", secretKey);

	         JSONObject json = new JSONObject();
	         json.put("version", "V2");
	         json.put("requestId", UUID.randomUUID().toString());
	         json.put("timestamp", System.currentTimeMillis());
	         JSONObject image = new JSONObject();
	         image.put("format", "jpg");
	         image.put("name", "demo");
	         JSONArray images = new JSONArray();
	         images.put(image);
	         json.put("images", images);
	         String postParams = json.toString();

	         con.connect();
	         DataOutputStream wr = new DataOutputStream(con.getOutputStream());
	         long start = System.currentTimeMillis();
	         File file = new File(imageFile);
	         writeMultiPart(wr, postParams, file, boundary);
	         wr.close();

	         int responseCode = con.getResponseCode();
	         BufferedReader br;
	         if (responseCode == 200) {
	            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	         } else {
	            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	         }
	         System.out.println("br = " + br);
	         String inputLine;
	         StringBuffer response = new StringBuffer();
	         while ((inputLine = br.readLine()) != null) {
	            response.append(inputLine);
	         }
	         
	         br.close();
	         System.out.println(response);
	         String result= response.toString();
	         
//	         boolean torf = result.contains("개인컵");
//	         System.out.println("개인컵 여부 : " + torf);
	         
//	         if(torf) {
//	            // 포인트 지급 dao
//	            return "성공";
//	         }
//	         
	         return result;
	      } catch (Exception e) {
	         System.out.println(e);
	      }
	      return "실패";
	   }
	   
	   private static void writeMultiPart(OutputStream out, String jsonMessage, File file, String boundary) throws IOException {
	      StringBuilder sb = new StringBuilder();
	      
	      sb.append("--").append(boundary).append("\r\n");
	      sb.append("Content-Disposition:form-data; name=\"message\"\r\n\r\n");
	      sb.append(jsonMessage);
	      sb.append("\r\n");
	   
	      out.write(sb.toString().getBytes("UTF-8"));
	      out.flush();
	   
	      if (file != null && file.isFile()) {
	         out.write(("--" + boundary + "\r\n").getBytes("UTF-8"));
	         StringBuilder fileString = new StringBuilder();
	         fileString
	            .append("Content-Disposition:form-data; name=\"file\"; filename=");
	         fileString.append("\"" + file.getName() + "\"\r\n");
	         fileString.append("Content-Type: application/octet-stream\r\n\r\n");
	         out.write(fileString.toString().getBytes("UTF-8"));
	         out.flush();
	   
	         try (FileInputStream fis = new FileInputStream(file)) {
	            byte[] buffer = new byte[8192];
	            int count;
	            while ((count = fis.read(buffer)) != -1) {
	               out.write(buffer, 0, count);
	            }
	            out.write("\r\n".getBytes());
	         }
	   
	         out.write(("--" + boundary + "--\r\n").getBytes("UTF-8"));
	      }
	      out.flush();
	   }
	   
	   public String getCustomerId(String customerId) {
		   String idNum = accountDAO.selectCustomerIdNum(customerId);
		   return idNum;
	   }
	   
	   public HashMap<String, Object> checkAccount(HashMap<String, Object> accountInfo){
			HashMap<String, Object> account = accountDAO.checkAccount(accountInfo);
			return account;
		}
	   
}
