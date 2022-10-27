package kr.co.ezenac.dao;

import kr.co.ezenac.dto.MainboardboxVO;
import util.DBManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MainboardboxDAO {

    private MainboardboxDAO() {
        super();
    }

    private static MainboardboxDAO instance = new MainboardboxDAO();

    public static void setInstance(MainboardboxDAO instance) {
        MainboardboxDAO.instance = instance;
    }

    public static MainboardboxDAO getInstance() {
        return instance;
    }

    public ArrayList<MainboardboxVO> selectAllMainboardbox() {
        String sql = "SELECT * FROM Mainboardbox ORDER BY code DESC";
        ArrayList<MainboardboxVO> productList = new ArrayList<>();

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn= DBManager.getConnection();
            pstmt=conn.prepareStatement(sql);
            rs=pstmt.executeQuery();

            while(rs.next()){
                MainboardboxVO mvo = new MainboardboxVO();
                mvo.setMainboard_idx(rs.getInt("mainboard_idx"));;
                mvo.setMainboard_name(rs.getString("mainboard_name"));
                mvo.setMainboard_image(rs.getString("mainboard_image"));
                mvo.setMainboard_price(rs.getInt("mainboard_price"));
               
                productList.add(mvo);
            }

        } catch (Exception e) {
            e.printStackTrace();

        } finally {
            DBManager.close(rs, pstmt, conn);
        }

        return productList;
    }

    public void insertMainboardbox(MainboardboxVO mvo){
        String sql = "INSERT INTO Mainboardbox VALUES(Mainboardbox_seq.nextval, ?, ?, ?, ?, ?, ?)";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try{
            conn = util.DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);

            pstmt.getInt(1, mvo.getTitle());
            pstmt.getString(2, mvo.getPrice());
            pstmt.getString(3, mvo.getDirector());
            pstmt.setString(4, mvo.getActor());
            pstmt.setString(5, mvo.getPoster());
            pstmt.setString(6, mvo.getSynopsis());
            
            mvo.setMainboard_idx(rs.getInt("mainboard_idx"));;
            mvo.setMainboard_name(rs.getString("mainboard_name"));
            mvo.setMainboard_image(rs.getString("mainboard_image"));
            mvo.setMainboard_price(rs.getInt("mainboard_price"));

            pstmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();

        }finally {
            util.DBManager.close(pstmt, conn);
        }
    }

    public MainboardboxVO selectProductByCode(int code){
        MainboardboxVO mvo = null;
        String sql = "SELECT * FROM Mainboardbox WHERE code = ?";

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try{
            conn = util.DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, code);
            rs = pstmt.executeQuery();

            if(rs.next()){
                mvo = new MainboardboxVO();
                mvo.setCode(rs.getInt("code"));
                mvo.setTitle(rs.getString("title"));
                mvo.setPrice(rs.getInt("price"));
                mvo.setDirector(rs.getString("director"));
                mvo.setActor(rs.getString("actor"));
                mvo.setPoster(rs.getString("poster"));
                mvo.setSynopsis(rs.getString("synopsis"));
            }

        }catch(Exception e){
            e.printStackTrace();
        }finally {
            util.DBManager.close(rs, pstmt, conn);
        }

        return mvo;
    }

    public void deleteMainboardbox(int code){

        String sql="DELETE FROM Mainboardbox WHERE code = ?";
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = util.DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, code);
            pstmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }finally {
            util.DBManager.close(pstmt, conn);
        }

    }

    public void updateProduct(MainboardboxVO mvo){

        Connection conn = null;
        PreparedStatement pstmt = null;
        String sql = "UPDATE Mainboardbox SET title=?, price=?, director=?, actor=?, poster=?, synopsis=? WHERE code=?";

        try{
            conn = DBManager.getConnection();
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, mvo.getTitle());
            pstmt.setInt(2, mvo.getPrice());
            pstmt.setString(3, mvo.getDirector());
            pstmt.setString(4, mvo.getActor());
            pstmt.setString(5, mvo.getPoster());
            pstmt.setString(6, mvo.getSynopsis());
            pstmt.setInt(7, mvo.getCode());
            pstmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            util.DBManager.close(pstmt, conn);
        }
    }

}
