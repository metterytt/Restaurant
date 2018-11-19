package facade;

import exceptions.AuthenticationException;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class Facade {

    private EntityManagerFactory emf = Persistence.createEntityManagerFactory("pu");

    public Facade(EntityManagerFactory emf) {
        this.emf = emf;
    }

    private EntityManager getEntityManager(EntityManagerFactory emf) {
        return emf.createEntityManager();
    }

//    public User getVeryfiedUser(String username, String password) throws AuthenticationException {
//        EntityManager em = emf.createEntityManager();
//        User user;
//        try {
//            user = em.find(User.class, username);
//            if (user == null || !user.verifyPassword(password)) {
//                throw new AuthenticationException("Invalid user name or password");
//            }
//        } finally {
//            em.close();
//        }
//        return user;
//    }
//
//    public User addNewUser(User user) throws AuthenticationException {
//        EntityManager em = emf.createEntityManager();
//        try {
//            em.getTransaction().begin();
//            em.persist(user);
//            em.getTransaction().commit();
//        } finally {
//            em.close();
//        }
//        return user;
//    }
    public Long getNumberOfUsers() {
        EntityManager em = getEntityManager(emf);
        try {
            Query q = em.createQuery("select count(u) from User u");
            Long count = (Long) q.getSingleResult();
            return count;
        } finally {
            em.close();
        }
    }

//    public List<User> getAllUsers() {
//        List<User> allUsers = new ArrayList<>();
//        EntityManager em = getEntityManager(emf);
//        try {
//            Query q = em.createQuery("select u.userName from User u");
//            allUsers = q.getResultList();
//            return allUsers;
//        } finally {
//            em.close();
//        }
//    }
    public String getSwapiData() throws MalformedURLException, IOException {
        String hostURL = "https://swapi.co/api/people/";
        int numberOfServerCalls = 5;

        ExecutorService executor = Executors.newFixedThreadPool(numberOfServerCalls);
        List<Future<String>> list = new ArrayList<Future<String>>();

        for (int i = 1; i <= numberOfServerCalls; i++) {
            Callable<String> callable = new SwapiHelper(hostURL + i);
            Future<String> future = executor.submit(callable);
            list.add(future);
        }
        List<String> returnList = new ArrayList<>();
        for (Future f : list) {
            try {
                returnList.add(f.get().toString());
            } catch (Exception e) {
            }
        }
        executor.shutdown();
        String returnstring = "[";
        for (int i = 0; i < numberOfServerCalls; i++) {
            returnstring += returnList.get(i);
            returnstring += ",";
        }

        returnstring = returnstring.substring(0, returnstring.length() - 1);
        returnstring += "]";
        return returnstring;
    }

    class SwapiHelper implements Callable {

        private String urlName;

        public SwapiHelper(String urlName) {
            this.urlName = urlName;
        }

        public String getUrlName() {
            return urlName;
        }

        @Override
        public String call() throws Exception {
            String result = "Error";
            try {
                URL url = new URL(urlName);
                HttpURLConnection con = (HttpURLConnection) url.openConnection();
                con.setRequestMethod("GET");
                con.setRequestProperty("Accept", "application/json;charset=UTF-8");
                con.setRequestProperty("User-Agent", "server");
                Scanner scan = new Scanner(con.getInputStream());
                String jsonStr = null;
                if (scan.hasNext()) {
                    jsonStr = scan.nextLine();
                }
                scan.close();
                return jsonStr;

            } catch (Exception e) {
                result = "->Red<-";
            }
            return urlName + "---" + result;
        }
    }

//    public List<Persons> getPersons() {
//        EntityManager em = getEntityManager(emf);
//        try {
//            Query tq = em.createQuery("Select p from Persons p");
//            return tq.getResultList();
//        } finally {
//            em.close();
//        }
//    }
//
//    // bruges ikke pt
//    public List<Persons> getByPage(int start, int end) {
//        EntityManager em = getEntityManager(emf);
//        try {
//            Query query = em.createQuery("SELECT p FROM Persons p");
//            query.setFirstResult(start);
//            query.setMaxResults(end);
//            List<Persons> persons = query.getResultList();
//            return persons;
//        } finally {
//            em.close();
//        }
//    }
}